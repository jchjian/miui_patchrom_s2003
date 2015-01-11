.class public Lcom/android/server/QcConnectivityService;
.super Lcom/android/server/ConnectivityService;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/QcConnectivityService$CheckMp;,
        Lcom/android/server/QcConnectivityService$VpnCallback;,
        Lcom/android/server/QcConnectivityService$SettingsObserver;,
        Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;,
        Lcom/android/server/QcConnectivityService$FeatureUser;,
        Lcom/android/server/QcConnectivityService$DefaultNetworkFactory;,
        Lcom/android/server/QcConnectivityService$NetworkFactory;,
        Lcom/android/server/QcConnectivityService$RouteAttributes;,
        Lcom/android/server/QcConnectivityService$RadioAttributes;
    }
.end annotation


# static fields
.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final CMP_RESULT_CODE_CONNECTABLE:I = 0x1

.field private static final CMP_RESULT_CODE_NO_CONNECTION:I = 0x0

.field private static final CMP_RESULT_CODE_NO_DNS:I = 0x2

.field private static final CMP_RESULT_CODE_NO_TCP_CONNECTION:I = 0x3

.field private static final CMP_RESULT_CODE_PROVISIONING_NETWORK:I = 0x5

.field private static final CMP_RESULT_CODE_REDIRECTED:I = 0x4

.field private static final CONNECTED_TO_PROVISIONING_NETWORK_ACTION:Ljava/lang/String; = "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

.field public static final CONNECTIVITY_AVAILABLE:Ljava/lang/String; = "CONNECTIVITY_AVAILABLE"

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x6d

.field public static final EVENT_AVOID_UNSUITABLE_WIFI:I = 0x1f8

.field private static final EVENT_CHANGE_MOBILE_DATA_ENABLED:I = 0x66

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x6c

.field public static final EVENT_CONNECTIVITY_SWITCH:I = 0x1f7

.field private static final EVENT_ENABLE_FAIL_FAST_MOBILE_DATA:I = 0x72

.field private static final EVENT_INET_CONDITION_CHANGE:I = 0x68

.field private static final EVENT_INET_CONDITION_HOLD_END:I = 0x69

.field private static final EVENT_PROXY_HAS_CHANGED:I = 0x74

.field public static final EVENT_REPRIORITIZE_DNS:I = 0x1f6

.field private static final EVENT_RESTORE_DEFAULT_NETWORK:I = 0x65

.field private static final EVENT_SAMPLE_INTERVAL_ELAPSED:I = 0x73

.field private static final EVENT_SEND_STICKY_BROADCAST_INTENT:I = 0x6f

.field private static final EVENT_SET_DEPENDENCY_MET:I = 0x6e

.field private static final EVENT_SET_MOBILE_DATA:I = 0x6b

.field private static final EVENT_SET_NETWORK_PREFERENCE:I = 0x67

.field private static final EVENT_SET_POLICY_DATA_ENABLE:I = 0x70

.field public static final EVENT_UPDATE_BLOCKED_UID:I = 0x1f5

.field private static final EVENT_VPN_STATE_CHANGED:I = 0x71

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "netType"

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "CaptivePortal.Notification"

.field private static final PROVISIONING:I = 0x2

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final REDIRECTED_PROVISIONING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "QcConnectivityService"

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field private static final TAG_REDIRECTED_URL:Ljava/lang/String; = "redirectedUrl"

.field private static sServiceInstance:Lcom/android/server/ConnectivityService;


# instance fields
.field private final INVALID_MSG_ARG:I

.field cneObj:Ljava/lang/Object;

.field private mActiveDefaultNetwork:I

.field private mAddedRoutes:Ljava/util/Collection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mAlarmManager:Landroid/app/AlarmManager;

.field private mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;

.field private mClat:Lcom/android/server/connectivity/Nat464Xlat;

.field private mContext:Landroid/content/Context;

.field private mCurrentLinkProperties:[Landroid/net/LinkProperties;

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

.field private mDefaultConnectionSequence:I

.field private mDefaultDns:Ljava/net/InetAddress;

.field private mDefaultInetCondition:I

.field private mDefaultInetConditionPublished:I

.field private mDefaultProxy:Landroid/net/ProxyProperties;

.field private mDefaultProxyDisabled:Z

.field private mDnsLock:Ljava/lang/Object;

.field private mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mExemptAddresses:Ljava/util/Collection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutesLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/QcConnectivityService$FeatureUser;",
            ">;"
        }
    .end annotation
.end field

.field volatile mFirstProvisioningCheckStarted:Z

.field private mGlobalProxy:Landroid/net/ProxyProperties;

.field private mHSM:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

.field private mHandler:Landroid/os/Handler;

.field private mInetConditionChangeInFlight:Z

.field private mInetLog:Ljava/util/ArrayList;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mIsNotificationVisible:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field mLinkManager:Ljava/lang/Object;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private mMeteredIfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNetConfigs:[Landroid/net/NetworkConfig;

.field private mNetRequestersPids:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetTrackers:[Landroid/net/NetworkStateTracker;

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockCausedBy:Ljava/lang/String;

.field private mNetTransitionWakeLockSerialNumber:I

.field private mNetTransitionWakeLockTimeout:I

.field private mNetd:Landroid/os/INetworkManagementService;

.field private mNetworkPreference:I

.field mNetworksDefined:I

.field private mNumDnsEntries:I

.field private mPacManager:Lcom/android/server/connectivity/PacManager;

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPriorityList:[I

.field mProtectedNetworks:Ljava/util/List;

.field private mProvisioningReceiver:Landroid/content/BroadcastReceiver;

.field private final mProvisioningUrlFile:Ljava/io/File;

.field private mProxyLock:Ljava/lang/Object;

.field mRadioAttributes:[Lcom/android/server/QcConnectivityService$RadioAttributes;

.field private mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;

.field private mRouteIdCtr:I

.field private final mRoutesLock:Ljava/lang/Object;

.field private mRulesLock:Ljava/lang/Object;

.field private mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

.field private mSettingsObserver:Lcom/android/server/QcConnectivityService$SettingsObserver;

.field private mSystemReady:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTestMode:Z

.field private mTethering:Lcom/android/server/connectivity/Tethering;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnCallback:Lcom/android/server/QcConnectivityService$VpnCallback;

.field private final mVpns:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mVpns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field

.field private wqeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 6
    .parameter "context"
    .parameter "netd"
    .parameter "statsService"
    .parameter "policyManager"

    .prologue
    .line 499
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/QcConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Lcom/android/server/QcConnectivityService$NetworkFactory;)V

    .line 500
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Lcom/android/server/QcConnectivityService$NetworkFactory;)V
    .locals 38
    .parameter "context"
    .parameter "netManager"
    .parameter "statsService"
    .parameter "policyManager"
    .parameter "netFactory"

    .prologue
    .line 504
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;-><init>()V

    .line 206
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 208
    new-instance v2, Lcom/android/server/QcConnectivityService$VpnCallback;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/QcConnectivityService$VpnCallback;-><init>(Lcom/android/server/QcConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mVpnCallback:Lcom/android/server/QcConnectivityService$VpnCallback;

    .line 216
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mRulesLock:Ljava/lang/Object;

    .line 218
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 220
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    .line 250
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    .line 252
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/QcConnectivityService;->mDefaultInetCondition:I

    .line 253
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I

    .line 254
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/QcConnectivityService;->mInetConditionChangeInFlight:Z

    .line 255
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/QcConnectivityService;->mDefaultConnectionSequence:I

    .line 257
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;

    .line 371
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    .line 378
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mRoutesLock:Ljava/lang/Object;

    .line 382
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    .line 387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    .line 393
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 394
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mProxyLock:Ljava/lang/Object;

    .line 395
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/QcConnectivityService;->mDefaultProxyDisabled:Z

    .line 398
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 400
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 423
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 428
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/QcConnectivityService;->mFirstProvisioningCheckStarted:Z

    .line 434
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->cneObj:Ljava/lang/Object;

    .line 446
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/QcConnectivityService;->mRouteIdCtr:I

    .line 448
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/QcConnectivityService;->INVALID_MSG_ARG:I

    .line 492
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mLinkManager:Ljava/lang/Object;

    .line 493
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/QcConnectivityService;->wqeEnabled:Z

    .line 1261
    new-instance v2, Lcom/android/server/QcConnectivityService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/QcConnectivityService$2;-><init>(Lcom/android/server/QcConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1851
    new-instance v2, Lcom/android/server/QcConnectivityService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/QcConnectivityService$3;-><init>(Lcom/android/server/QcConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 2324
    new-instance v2, Lcom/android/server/QcConnectivityService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/QcConnectivityService$4;-><init>(Lcom/android/server/QcConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 5696
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6171
    new-instance v2, Lcom/android/server/QcConnectivityService$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/QcConnectivityService$6;-><init>(Lcom/android/server/QcConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mProvisioningReceiver:Landroid/content/BroadcastReceiver;

    .line 6208
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/QcConnectivityService;->mIsNotificationVisible:Z

    .line 6296
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 6457
    new-instance v2, Lcom/android/server/QcConnectivityService$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/QcConnectivityService$7;-><init>(Lcom/android/server/QcConnectivityService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 505
    const-string v2, "QcConnectivityService starting up"

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 508
    const/16 v2, 0xf

    new-array v2, v2, [Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;

    .line 509
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    const/16 v2, 0xf

    if-ge v15, v2, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;

    new-instance v3, Lcom/android/server/QcConnectivityService$RouteAttributes;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/QcConnectivityService$RouteAttributes;-><init>(Lcom/android/server/QcConnectivityService;)V

    aput-object v3, v2, v15

    .line 509
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 513
    :cond_0
    const-string v2, "persist.cne.feature"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v36

    .line 515
    .local v36, value:I
    const/4 v2, 0x3

    move/from16 v0, v36

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    move/from16 v0, v36

    if-ne v0, v2, :cond_6

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/QcConnectivityService;->wqeEnabled:Z

    .line 517
    new-instance v14, Landroid/os/HandlerThread;

    const-string v2, "ConnectivityServiceThread"

    invoke-direct {v14, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 518
    .local v14, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    .line 519
    new-instance v2, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "ConnectivityServiceHSM"

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v6}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;-><init>(Lcom/android/server/QcConnectivityService;Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mHSM:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mHSM:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-virtual {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->start()V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mHSM:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-virtual {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    .line 525
    if-nez p5, :cond_2

    .line 526
    new-instance p5, Lcom/android/server/QcConnectivityService$DefaultNetworkFactory;

    .end local p5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/QcConnectivityService$DefaultNetworkFactory;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 530
    .restart local p5
    :cond_2
    const-string v2, "net.hostname"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 531
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 533
    .local v17, id:Ljava/lang/String;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 534
    new-instance v2, Ljava/lang/String;

    const-string v3, "android-"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 535
    .local v26, name:Ljava/lang/String;
    const-string v2, "net.hostname"

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .end local v17           #id:Ljava/lang/String;
    .end local v26           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_dns_server"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 542
    .local v11, dns:Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 543
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 547
    :cond_5
    :try_start_0
    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mDefaultDns:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_2
    const-string v2, "missing Context"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    .line 553
    const-string v2, "missing INetworkManagementService"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    .line 554
    const-string v2, "missing INetworkPolicyManager"

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/android/server/QcConnectivityService;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 555
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 559
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 565
    :goto_3
    const-string v2, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/PowerManager;

    .line 567
    .local v29, powerManager:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "QcConnectivityService"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 571
    const/16 v2, 0xf

    new-array v2, v2, [Landroid/net/NetworkStateTracker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .line 573
    const/16 v2, 0xf

    new-array v2, v2, [Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    .line 575
    const/16 v2, 0xf

    new-array v2, v2, [Lcom/android/server/QcConnectivityService$RadioAttributes;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mRadioAttributes:[Lcom/android/server/QcConnectivityService$RadioAttributes;

    .line 576
    const/16 v2, 0xf

    new-array v2, v2, [Landroid/net/NetworkConfig;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 579
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v33

    .line 581
    .local v33, raStrings:[Ljava/lang/String;
    move-object/from16 v8, v33

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    aget-object v32, v8, v16

    .line 582
    .local v32, raString:Ljava/lang/String;
    new-instance v31, Lcom/android/server/QcConnectivityService$RadioAttributes;

    invoke-direct/range {v31 .. v32}, Lcom/android/server/QcConnectivityService$RadioAttributes;-><init>(Ljava/lang/String;)V

    .line 584
    .local v31, r:Lcom/android/server/QcConnectivityService$RadioAttributes;
    move-object/from16 v0, v31

    iget v2, v0, Lcom/android/server/QcConnectivityService$RadioAttributes;->mType:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_7

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/QcConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 581
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 515
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v11           #dns:Ljava/lang/String;
    .end local v14           #handlerThread:Landroid/os/HandlerThread;
    .end local v16           #i$:I
    .end local v21           #len$:I
    .end local v29           #powerManager:Landroid/os/PowerManager;
    .end local v31           #r:Lcom/android/server/QcConnectivityService$RadioAttributes;
    .end local v32           #raString:Ljava/lang/String;
    .end local v33           #raStrings:[Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 548
    .restart local v11       #dns:Ljava/lang/String;
    .restart local v14       #handlerThread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v12

    .line 549
    .local v12, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting defaultDns using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 560
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v12

    .line 562
    .local v12, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to register INetworkPolicyListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 588
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v16       #i$:I
    .restart local v21       #len$:I
    .restart local v29       #powerManager:Landroid/os/PowerManager;
    .restart local v31       #r:Lcom/android/server/QcConnectivityService$RadioAttributes;
    .restart local v32       #raString:Ljava/lang/String;
    .restart local v33       #raStrings:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mRadioAttributes:[Lcom/android/server/QcConnectivityService$RadioAttributes;

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/QcConnectivityService$RadioAttributes;->mType:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_8

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in radioAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/QcConnectivityService$RadioAttributes;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 593
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mRadioAttributes:[Lcom/android/server/QcConnectivityService$RadioAttributes;

    move-object/from16 v0, v31

    iget v3, v0, Lcom/android/server/QcConnectivityService$RadioAttributes;->mType:I

    aput-object v31, v2, v3

    goto :goto_5

    .line 597
    .end local v31           #r:Lcom/android/server/QcConnectivityService$RadioAttributes;
    .end local v32           #raString:Ljava/lang/String;
    :cond_9
    const-string v2, "ro.radio.noril"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 598
    .local v37, wifiOnly:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wifiOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    .line 601
    .local v25, naStrings:[Ljava/lang/String;
    move-object/from16 v8, v25

    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    aget-object v24, v8, v16

    .line 603
    .local v24, naString:Ljava/lang/String;
    :try_start_2
    new-instance v22, Landroid/net/NetworkConfig;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 605
    .local v22, n:Landroid/net/NetworkConfig;
    move-object/from16 v0, v22

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v3, 0xe

    if-le v2, v3, :cond_a

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 601
    .end local v22           #n:Landroid/net/NetworkConfig;
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 610
    .restart local v22       #n:Landroid/net/NetworkConfig;
    :cond_a
    if-eqz v37, :cond_b

    move-object/from16 v0, v22

    iget v2, v0, Landroid/net/NetworkConfig;->type:I

    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 627
    .end local v22           #n:Landroid/net/NetworkConfig;
    :catch_2
    move-exception v2

    goto :goto_7

    .line 615
    .restart local v22       #n:Landroid/net/NetworkConfig;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aget-object v2, v2, v3

    if-eqz v2, :cond_c

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_7

    .line 620
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mRadioAttributes:[Lcom/android/server/QcConnectivityService$RadioAttributes;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    aget-object v2, v2, v3

    if-nez v2, :cond_d

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in networkAttributes - ignoring attempt to use undefined radio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 625
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v0, v22

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput-object v22, v2, v3

    .line 626
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/QcConnectivityService;->mNetworksDefined:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/QcConnectivityService;->mNetworksDefined:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_7

    .line 633
    .end local v22           #n:Landroid/net/NetworkConfig;
    .end local v24           #naString:Ljava/lang/String;
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 634
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v30

    .line 636
    .local v30, protectedNetworks:[I
    move-object/from16 v8, v30

    .local v8, arr$:[I
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_8
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_10

    aget v28, v8, v16

    .line 637
    .local v28, p:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v28

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    :goto_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 640
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring protectedNetwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_9

    .line 645
    .end local v28           #p:I
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/QcConnectivityService;->mNetworksDefined:I

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mPriorityList:[I

    .line 647
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/QcConnectivityService;->mNetworksDefined:I

    add-int/lit8 v18, v2, -0x1

    .line 648
    .local v18, insertionPoint:I
    const/4 v10, 0x0

    .line 649
    .local v10, currentLowest:I
    const/16 v27, 0x0

    .line 650
    .end local v8           #arr$:[I
    .local v27, nextLowest:I
    :goto_a
    const/4 v2, -0x1

    move/from16 v0, v18

    if-le v0, v2, :cond_16

    .line 651
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .local v8, arr$:[Landroid/net/NetworkConfig;
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    move/from16 v19, v18

    .end local v18           #insertionPoint:I
    .local v19, insertionPoint:I
    :goto_b
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    aget-object v23, v8, v16

    .line 652
    .local v23, na:Landroid/net/NetworkConfig;
    if-nez v23, :cond_11

    move/from16 v18, v19

    .line 651
    .end local v19           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    :goto_c
    add-int/lit8 v16, v16, 0x1

    move/from16 v19, v18

    .end local v18           #insertionPoint:I
    .restart local v19       #insertionPoint:I
    goto :goto_b

    .line 653
    :cond_11
    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-ge v2, v10, :cond_12

    move/from16 v18, v19

    .end local v19           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    goto :goto_c

    .line 654
    .end local v18           #insertionPoint:I
    .restart local v19       #insertionPoint:I
    :cond_12
    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    if-le v2, v10, :cond_14

    .line 655
    move-object/from16 v0, v23

    iget v2, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v0, v27

    if-lt v2, v0, :cond_13

    if-nez v27, :cond_1e

    .line 656
    :cond_13
    move-object/from16 v0, v23

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    move/from16 v27, v0

    move/from16 v18, v19

    .end local v19           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    goto :goto_c

    .line 660
    .end local v18           #insertionPoint:I
    .restart local v19       #insertionPoint:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mPriorityList:[I

    add-int/lit8 v18, v19, -0x1

    .end local v19           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/net/NetworkConfig;->type:I

    aput v3, v2, v19

    goto :goto_c

    .line 662
    .end local v18           #insertionPoint:I
    .end local v23           #na:Landroid/net/NetworkConfig;
    .restart local v19       #insertionPoint:I
    :cond_15
    move/from16 v10, v27

    .line 663
    const/16 v27, 0x0

    move/from16 v18, v19

    .end local v19           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    goto :goto_a

    .line 668
    .end local v8           #arr$:[Landroid/net/NetworkConfig;
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/QcConnectivityService;->getPersistedNetworkPreference()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    .line 669
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 670
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/QcConnectivityService;->mPriorityList:[I

    .local v8, arr$:[I
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_d
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_17

    aget v22, v8, v16

    .line 671
    .local v22, n:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v22

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static/range {v22 .. v22}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 672
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    .line 676
    .end local v22           #n:I
    :cond_17
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 677
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You should set at least one default Network in config.xml!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    .restart local v22       #n:I
    :cond_18
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 682
    .end local v8           #arr$:[I
    .end local v22           #n:I
    :cond_19
    const/16 v2, 0xf

    new-array v2, v2, [Ljava/util/ArrayList;

    check-cast v2, [Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    .line 684
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/QcConnectivityService;->mPriorityList:[I

    .restart local v8       #arr$:[I
    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_e
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_1a

    aget v15, v8, v16

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v15

    .line 684
    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    .line 688
    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mFeatureUsers:Ljava/util/List;

    .line 690
    const-string v2, "cm.test.mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/QcConnectivityService;->mTestMode:Z

    .line 694
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/QcConnectivityService;->mPriorityList:[I

    array-length v0, v8

    move/from16 v21, v0

    const/16 v16, 0x0

    :goto_10
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_1d

    aget v34, v8, v16

    .line 695
    .local v34, targetNetworkType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v9, v2, v34

    .line 698
    .local v9, config:Landroid/net/NetworkConfig;
    :try_start_3
    move-object/from16 v0, p5

    move/from16 v1, v34

    invoke-interface {v0, v1, v9}, Lcom/android/server/QcConnectivityService$NetworkFactory;->createTracker(ILandroid/net/NetworkConfig;)Landroid/net/NetworkStateTracker;

    move-result-object v35

    .line 699
    .local v35, tracker:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aput-object v35, v2, v34
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Landroid/net/NetworkStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 707
    invoke-virtual {v9}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 708
    invoke-interface/range {v35 .. v35}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 694
    .end local v35           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1b
    :goto_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_10

    .line 690
    .end local v9           #config:Landroid/net/NetworkConfig;
    .end local v34           #targetNetworkType:I
    :cond_1c
    const/4 v2, 0x0

    goto :goto_f

    .line 700
    .restart local v9       #config:Landroid/net/NetworkConfig;
    .restart local v34       #targetNetworkType:I
    :catch_3
    move-exception v12

    .line 701
    .local v12, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "QcConnectivityService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem creating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tracker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 712
    .end local v9           #config:Landroid/net/NetworkConfig;
    .end local v12           #e:Ljava/lang/IllegalArgumentException;
    .end local v34           #targetNetworkType:I
    :cond_1d
    new-instance v2, Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Tethering;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/IConnectivityManager;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    .line 715
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 716
    .local v5, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_STARTING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    const-string v2, "android.intent.action.USER_STOPPING"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 720
    new-instance v2, Lcom/android/server/connectivity/Nat464Xlat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v4, v0, v6}, Lcom/android/server/connectivity/Nat464Xlat;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    .line 723
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 731
    :goto_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mInetLog:Ljava/util/ArrayList;

    .line 734
    new-instance v2, Lcom/android/server/QcConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6d

    invoke-direct {v2, v3, v4}, Lcom/android/server/QcConnectivityService$SettingsObserver;-><init>(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mSettingsObserver:Lcom/android/server/QcConnectivityService$SettingsObserver;

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mSettingsObserver:Lcom/android/server/QcConnectivityService$SettingsObserver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/QcConnectivityService$SettingsObserver;->observe(Landroid/content/Context;)V

    .line 737
    new-instance v2, Lcom/android/server/connectivity/DataConnectionStats;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mDataConnectionStats:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-virtual {v2}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    .line 741
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 742
    .local v20, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 747
    const v2, 0xea60

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/QcConnectivityService;->setAlarm(ILandroid/app/PendingIntent;)V

    .line 749
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 750
    .local v13, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.ConnectivityService.action.PKT_CNT_SAMPLE_INTERVAL_ELAPSED"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/QcConnectivityService$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/QcConnectivityService$1;-><init>(Lcom/android/server/QcConnectivityService;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, v13}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 764
    new-instance v2, Lcom/android/server/connectivity/PacManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x74

    invoke-direct {v2, v3, v4, v6}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/QcConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 766
    new-instance v13, Landroid/content/IntentFilter;

    .end local v13           #filter:Landroid/content/IntentFilter;
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 767
    .restart local v13       #filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-virtual {v13, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mProvisioningReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/QcConnectivityService;->startCne()V

    .line 771
    return-void

    .line 726
    .end local v13           #filter:Landroid/content/IntentFilter;
    .end local v20           #intent:Landroid/content/Intent;
    :catch_4
    move-exception v12

    .line 727
    .local v12, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering observer :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_12

    .end local v5           #intentFilter:Landroid/content/IntentFilter;
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v18           #insertionPoint:I
    .local v8, arr$:[Landroid/net/NetworkConfig;
    .restart local v19       #insertionPoint:I
    .restart local v23       #na:Landroid/net/NetworkConfig;
    :cond_1e
    move/from16 v18, v19

    .end local v19           #insertionPoint:I
    .restart local v18       #insertionPoint:I
    goto/16 :goto_c
.end method

.method static synthetic access$004(Lcom/android/server/QcConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mRouteIdCtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/QcConnectivityService;->mRouteIdCtr:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/QcConnectivityService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/QcConnectivityService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/android/server/QcConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I

    return v0
.end method

.method static synthetic access$11602(Lcom/android/server/QcConnectivityService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput p1, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/QcConnectivityService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/server/QcConnectivityService;->wqeEnabled:Z

    return v0
.end method

.method static synthetic access$12100(Lcom/android/server/QcConnectivityService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/server/QcConnectivityService;)Ljava/net/InetAddress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/server/QcConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mNumDnsEntries:I

    return v0
.end method

.method static synthetic access$12702(Lcom/android/server/QcConnectivityService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput p1, p0, Lcom/android/server/QcConnectivityService;->mNumDnsEntries:I

    return p1
.end method

.method static synthetic access$12800(Lcom/android/server/QcConnectivityService;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/android/server/QcConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->flushVmDnsCache()V

    return-void
.end method

.method static synthetic access$13500(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Nat464Xlat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/android/server/QcConnectivityService;)[Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14100(Lcom/android/server/QcConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->getConnectivityChangeDelay()I

    move-result v0

    return v0
.end method

.method static synthetic access$14200(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$14500(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$14908(Lcom/android/server/QcConnectivityService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/QcConnectivityService;->mDefaultConnectionSequence:I

    return v0
.end method

.method static synthetic access$15002(Lcom/android/server/QcConnectivityService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/server/QcConnectivityService;->mInetConditionChangeInFlight:Z

    return p1
.end method

.method static synthetic access$15100(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    return-void
.end method

.method static synthetic access$16000(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$16300(Lcom/android/server/QcConnectivityService;)[Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/android/server/QcConnectivityService;)Lcom/android/server/connectivity/Tethering;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    return-object v0
.end method

.method static synthetic access$18300(Lcom/android/server/QcConnectivityService;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$18400(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18500(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/QcConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18600(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/QcConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18700(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mRoutesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$19101(Lcom/android/server/QcConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateBlockedUids(IZ)V

    return-void
.end method

.method static synthetic access$19200(Lcom/android/server/QcConnectivityService;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 181
    invoke-direct/range {p0 .. p5}, Lcom/android/server/QcConnectivityService;->updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$19300(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$19402(Lcom/android/server/QcConnectivityService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/server/QcConnectivityService;->mDefaultProxyDisabled:Z

    return p1
.end method

.method static synthetic access$19500(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$19600(Lcom/android/server/QcConnectivityService;)Landroid/net/ProxyProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    return-object v0
.end method

.method static synthetic access$19700(Lcom/android/server/QcConnectivityService;Landroid/net/ProxyProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$19800(Lcom/android/server/QcConnectivityService;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/QcConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19900(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-static {p0}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-static {p0, p1}, Lcom/android/server/QcConnectivityService;->makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20000(Lcom/android/server/QcConnectivityService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$20300(Lcom/android/server/QcConnectivityService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->isMobileDataStateTrackerReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$20400(Lcom/android/server/QcConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V

    return-void
.end method

.method static synthetic access$20600(Lcom/android/server/QcConnectivityService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->handleMobileProvisioningAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20700(Lcom/android/server/QcConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->onUserStart(I)V

    return-void
.end method

.method static synthetic access$20800(Lcom/android/server/QcConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->onUserStop(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/QcConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->sendDataActivityBroadcast(IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/QcConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    return v0
.end method

.method static synthetic access$3108(Lcom/android/server/QcConnectivityService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/QcConnectivityService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/QcConnectivityService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/server/QcConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->handleSetNetworkPreference(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/QcConnectivityService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->handleSetMobileData(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/QcConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->handleDeprecatedGlobalHttpProxy()V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-static {p0}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/QcConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->handleSetDependencyMet(IZ)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/QcConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->handleSetPolicyDataEnable(IZ)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/QcConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/QcConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->handleNetworkSamplingTimeout()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/QcConnectivityService;Landroid/net/ProxyProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/QcConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->handleUpdateBlockedUids(IZ)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/QcConnectivityService;Lcom/android/server/QcConnectivityService$FeatureUser;Z)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/QcConnectivityService$FeatureUser;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/QcConnectivityService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->handleConnectivityChange(IZ)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/QcConnectivityService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->handleDnsConfigurationChange(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/QcConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->handleInetConditionChange(II)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/QcConnectivityService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->handleInetConditionHoldEnd(II)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/QcConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockTimeout:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/QcConnectivityService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforcePreference()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/QcConnectivityService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/QcConnectivityService;)[Lcom/android/server/QcConnectivityService$RouteAttributes;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/QcConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/QcConnectivityService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/QcConnectivityService;)Landroid/net/CaptivePortalTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/QcConnectivityService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/QcConnectivityService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/QcConnectivityService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput p1, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    return p1
.end method

.method private addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z
    .locals 7
    .parameter "p"
    .parameter "r"
    .parameter "toDefaultTable"
    .parameter "exempt"

    .prologue
    .line 1690
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/QcConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    return v0
.end method

.method private addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z
    .locals 6
    .parameter "lp"
    .parameter "addr"
    .parameter "exempt"

    .prologue
    const/4 v3, 0x1

    .line 1698
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/QcConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z

    move-result v0

    return v0
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 5257
    .local p0, value:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    .line 5258
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5260
    :cond_0
    return-object p0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    return-void
.end method

.method private enforceMarkNetworkSocketPermission()V
    .locals 3

    .prologue
    .line 1991
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f5

    if-ne v0, v1, :cond_0

    .line 1997
    :goto_0
    return-void

    .line 1994
    :cond_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MARK_NETWORK_SOCKET"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforcePreference()V
    .locals 3

    .prologue
    .line 960
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 976
    :cond_0
    return-void

    .line 963
    :cond_1
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    const/4 v0, 0x0

    .local v0, t:I
    :goto_0
    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    .line 967
    iget v1, p0, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tearing down "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in enforcePreference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 973
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 966
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private enforceTetherAccessPermission()V
    .locals 3

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    return-void
.end method

.method private enforceTetherChangePermission()V
    .locals 3

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    return-void
.end method

.method private flushVmDnsCache()V
    .locals 5

    .prologue
    .line 2906
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLEAR_DNS_CACHE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2907
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2911
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2914
    .local v0, ident:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2916
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2918
    return-void

    .line 2916
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private getConnectivityChangeDelay()I
    .locals 4

    .prologue
    .line 933
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 936
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "conn.connectivity_change_delay"

    const/16 v3, 0xbb8

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 939
    .local v1, defaultDelay:I
    const-string v2, "connectivity_change_delay"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;
    .locals 5
    .parameter "tracker"
    .parameter "uid"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1015
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1016
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 1019
    .end local v0           #info:Landroid/net/NetworkInfo;
    .local v1, info:Landroid/net/NetworkInfo;
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1021
    .end local v1           #info:Landroid/net/NetworkInfo;
    .restart local v0       #info:Landroid/net/NetworkInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v2, :cond_1

    .line 1022
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1026
    :cond_1
    const/16 v2, 0x3e8

    if-le p2, v2, :cond_2

    .line 1028
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1031
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_2
    return-object v0
.end method

.method private getNetworkInfo(II)Landroid/net/NetworkInfo;
    .locals 3
    .parameter "networkType"
    .parameter "uid"

    .prologue
    .line 1116
    const/4 v0, 0x0

    .line 1117
    .local v0, info:Landroid/net/NetworkInfo;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1118
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, p1

    .line 1119
    .local v1, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v1, :cond_0

    .line 1120
    invoke-direct {p0, v1, p2}, Lcom/android/server/QcConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1123
    .end local v1           #tracker:Landroid/net/NetworkStateTracker;
    :cond_0
    return-object v0
.end method

.method private getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    .locals 5
    .parameter "networkType"

    .prologue
    .line 1190
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1192
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1193
    new-instance v1, Landroid/net/NetworkState;

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    .line 1197
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPersistedNetworkPreference()I
    .locals 4

    .prologue
    .line 944
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 946
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "network_preference"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 949
    .local v1, networkPrefSetting:I
    return v1
.end method

.method private getProvisioningNetworkInfo()Landroid/net/NetworkInfo;
    .locals 7

    .prologue
    .line 1057
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1060
    const/4 v4, 0x0

    .line 1061
    .local v4, provNi:Landroid/net/NetworkInfo;
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1062
    .local v3, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1063
    move-object v4, v3

    .line 1067
    .end local v3           #ni:Landroid/net/NetworkInfo;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProvisioningNetworkInfo: X provNi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 1068
    return-object v4

    .line 1061
    .restart local v3       #ni:Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getProvisioningUrlBaseFromFile(I)Ljava/lang/String;
    .locals 12
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    .line 6313
    const/4 v3, 0x0

    .line 6314
    .local v3, fileReader:Ljava/io/FileReader;
    const/4 v7, 0x0

    .line 6315
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    iget-object v10, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 6318
    .local v0, config:Landroid/content/res/Configuration;
    packed-switch p1, :pswitch_data_0

    .line 6326
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getProvisioningUrlBaseFromFile: Unexpected parameter "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 6320
    :pswitch_0
    const-string v8, "provisioningUrl"

    .line 6331
    .local v8, tagType:Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    iget-object v10, p0, Lcom/android/server/QcConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v4, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 6332
    .end local v3           #fileReader:Ljava/io/FileReader;
    .local v4, fileReader:Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 6333
    invoke-interface {v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 6334
    const-string v10, "provisioningUrls"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 6337
    :cond_0
    :goto_1
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 6339
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    move-result-object v2

    .line 6340
    .local v2, element:Ljava/lang/String;
    if-nez v2, :cond_3

    .line 6367
    if-eqz v4, :cond_1

    .line 6369
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    :cond_1
    :goto_2
    move-object v3, v4

    .line 6373
    .end local v2           #element:Ljava/lang/String;
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :cond_2
    :goto_3
    return-object v9

    .line 6323
    .end local v8           #tagType:Ljava/lang/String;
    :pswitch_1
    const-string v8, "redirectedUrl"

    .line 6324
    .restart local v8       #tagType:Ljava/lang/String;
    goto :goto_0

    .line 6342
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v2       #element:Ljava/lang/String;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :cond_3
    :try_start_3
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6343
    const/4 v10, 0x0

    const-string v11, "mcc"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    move-result-object v5

    .line 6345
    .local v5, mcc:Ljava/lang/String;
    if-eqz v5, :cond_0

    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget v11, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v10, v11, :cond_0

    .line 6346
    const/4 v10, 0x0

    const-string v11, "mnc"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6347
    .local v6, mnc:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget v11, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v10, v11, :cond_0

    .line 6348
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 6349
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 6350
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    move-result-object v9

    .line 6367
    if-eqz v4, :cond_4

    .line 6369
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_4
    :goto_4
    move-object v3, v4

    .line 6370
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_3

    .line 6354
    .end local v3           #fileReader:Ljava/io/FileReader;
    .end local v6           #mnc:Ljava/lang/String;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 6355
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_1

    .line 6360
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v2           #element:Ljava/lang/String;
    .end local v5           #mcc:Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .line 6361
    .end local v4           #fileReader:Ljava/io/FileReader;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :goto_5
    :try_start_7
    const-string v10, "Carrier Provisioning Urls file not found"

    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6367
    if-eqz v3, :cond_2

    .line 6369
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 6370
    :catch_2
    move-exception v10

    goto :goto_3

    .line 6362
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 6363
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    :try_start_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 6367
    if-eqz v3, :cond_2

    .line 6369
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    .line 6370
    :catch_4
    move-exception v10

    goto/16 :goto_3

    .line 6364
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v1

    .line 6365
    .local v1, e:Ljava/io/IOException;
    :goto_7
    :try_start_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 6367
    if-eqz v3, :cond_2

    .line 6369
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_3

    .line 6370
    :catch_6
    move-exception v10

    goto/16 :goto_3

    .line 6367
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_8
    if-eqz v3, :cond_5

    .line 6369
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 6370
    :cond_5
    :goto_9
    throw v9

    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v2       #element:Ljava/lang/String;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    .restart local v5       #mcc:Ljava/lang/String;
    .restart local v6       #mnc:Ljava/lang/String;
    :catch_7
    move-exception v10

    goto :goto_4

    .end local v5           #mcc:Ljava/lang/String;
    .end local v6           #mnc:Ljava/lang/String;
    :catch_8
    move-exception v10

    goto/16 :goto_2

    .end local v2           #element:Ljava/lang/String;
    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    :catch_9
    move-exception v10

    goto :goto_9

    .line 6367
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_8

    .line 6364
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_7

    .line 6362
    .end local v3           #fileReader:Ljava/io/FileReader;
    .restart local v4       #fileReader:Ljava/io/FileReader;
    :catch_b
    move-exception v1

    move-object v3, v4

    .end local v4           #fileReader:Ljava/io/FileReader;
    .restart local v3       #fileReader:Ljava/io/FileReader;
    goto :goto_6

    .line 6360
    :catch_c
    move-exception v1

    goto :goto_5

    .line 6318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRestoreDefaultNetworkDelay(I)I
    .locals 3
    .parameter "networkType"

    .prologue
    .line 2988
    const-string v2, "android.telephony.apn-restore"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2990
    .local v0, restoreDefaultNetworkDelayStr:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2993
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3004
    :cond_0
    :goto_0
    return v1

    .line 2994
    :catch_0
    move-exception v2

    .line 2998
    :cond_1
    const v1, 0xea60

    .line 3000
    .local v1, ret:I
    const/16 v2, 0xe

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    .line 3002
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, p1

    iget v1, v2, Landroid/net/NetworkConfig;->restoreTime:I

    goto :goto_0
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    .locals 2
    .parameter "proxy"

    .prologue
    .line 5126
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5128
    const/4 p1, 0x0

    .line 5130
    :cond_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v0, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 5140
    :goto_0
    return-void

    .line 5132
    :cond_1
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    if-ne v0, p1, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 5139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5133
    :cond_2
    :try_start_1
    iput-object p1, p0, Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 5135
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v0, :cond_3

    monitor-exit v1

    goto :goto_0

    .line 5136
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/QcConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v0, :cond_4

    .line 5137
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    .line 5139
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 2424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Captive portal check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 2425
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 2426
    .local v1, type:I
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, v1

    .line 2427
    .local v0, thisNet:Landroid/net/NetworkStateTracker;
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2428
    iget v2, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    if-eq v2, v1, :cond_1

    .line 2429
    invoke-direct {p0, v1}, Lcom/android/server/QcConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Captive check on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 2431
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;

    new-instance v3, Landroid/net/NetworkInfo;

    invoke-direct {v3, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v3}, Landroid/net/CaptivePortalTracker;->detectCaptivePortal(Landroid/net/NetworkInfo;)V

    .line 2443
    :goto_0
    return-void

    .line 2434
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tear down low priority net "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 2435
    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_0

    .line 2441
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCaptivePortalTrackerCheck: call captivePortalCheckComplete ni="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 2442
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->captivePortalCheckComplete()V

    goto :goto_0
.end method

.method private handleConnect(Landroid/net/NetworkInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v10, 0x0

    .line 2345
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 2347
    .local v1, newNetType:I
    invoke-direct {p0, v1}, Lcom/android/server/QcConnectivityService;->setupDataActivityTracking(I)V

    .line 2350
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v0

    .line 2351
    .local v0, isFailover:Z
    iget-object v5, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v5, v1

    .line 2352
    .local v4, thisNet:Landroid/net/NetworkStateTracker;
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2361
    .local v3, thisIface:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2362
    iget v5, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    if-eq v5, v1, :cond_2

    .line 2363
    invoke-direct {p0, v1}, Lcom/android/server/QcConnectivityService;->isNewNetTypePreferredOverCurrentNetType(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2365
    iget-object v5, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v6, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    aget-object v2, v5, v6

    .line 2368
    .local v2, otherNet:Landroid/net/NetworkStateTracker;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " teardown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 2371
    invoke-direct {p0, v2}, Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2372
    const-string v5, "Network declined teardown request"

    invoke-static {v5}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 2373
    invoke-direct {p0, v4}, Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    .line 2421
    .end local v2           #otherNet:Landroid/net/NetworkStateTracker;
    :cond_0
    :goto_0
    return-void

    .line 2382
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/QcConnectivityService;->teardown(Landroid/net/NetworkStateTracker;)Z

    goto :goto_0

    .line 2386
    :cond_2
    monitor-enter p0

    .line 2390
    :try_start_0
    iget-object v5, p0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2391
    iget-object v5, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x6c

    iget v8, p0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockSerialNumber:I

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2396
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2397
    iput v1, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    .line 2401
    iput v10, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I

    .line 2402
    iget v5, p0, Lcom/android/server/QcConnectivityService;->mDefaultConnectionSequence:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/QcConnectivityService;->mDefaultConnectionSequence:I

    .line 2403
    iput-boolean v10, p0, Lcom/android/server/QcConnectivityService;->mInetConditionChangeInFlight:Z

    .line 2407
    :cond_4
    invoke-interface {v4, v10}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 2408
    invoke-direct {p0, v4}, Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V

    .line 2409
    invoke-direct {p0, v4}, Lcom/android/server/QcConnectivityService;->updateMtuSizeSettings(Landroid/net/NetworkStateTracker;)V

    .line 2410
    invoke-direct {p0, v1, v10}, Lcom/android/server/QcConnectivityService;->handleConnectivityChange(IZ)V

    .line 2411
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->getConnectivityChangeDelay()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/QcConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 2414
    if-eqz v3, :cond_0

    .line 2416
    :try_start_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v3, v1}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2417
    :catch_0
    move-exception v5

    goto :goto_0

    .line 2396
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method private handleConnectionFailure(Landroid/net/NetworkInfo;)V
    .locals 11
    .parameter "info"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2213
    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-interface {v6, v8}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 2215
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 2216
    .local v3, reason:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 2219
    .local v0, extraInfo:Ljava/lang/String;
    if-nez v3, :cond_6

    .line 2220
    const-string v4, "."

    .line 2224
    .local v4, reasonText:Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to connect to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 2226
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2227
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "networkInfo"

    new-instance v7, Landroid/net/NetworkInfo;

    invoke-direct {v7, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2228
    const-string v6, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2229
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2230
    const-string v6, "noConnectivity"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2232
    :cond_0
    if-eqz v3, :cond_1

    .line 2233
    const-string v6, "reason"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2235
    :cond_1
    if-eqz v0, :cond_2

    .line 2236
    const-string v6, "extraInfo"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2238
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2239
    const-string v6, "isFailover"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2240
    invoke-virtual {p1, v8}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2243
    :cond_3
    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2244
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/QcConnectivityService;->tryFailover(I)V

    .line 2245
    iget v6, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v10, :cond_7

    .line 2246
    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 2247
    .local v5, switchTo:Landroid/net/NetworkInfo;
    const-string v6, "otherNetwork"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2254
    .end local v5           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v6, "inetCondition"

    iget v7, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2256
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2257
    .local v1, immediateIntent:Landroid/content/Intent;
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2258
    invoke-direct {p0, v1}, Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2259
    invoke-direct {p0, v2}, Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2264
    iget v6, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    if-eq v6, v10, :cond_5

    .line 2265
    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v7, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    aget-object v6, v6, v7

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/QcConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 2267
    :cond_5
    return-void

    .line 2222
    .end local v1           #immediateIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #reasonText:Ljava/lang/String;
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #reasonText:Ljava/lang/String;
    goto/16 :goto_0

    .line 2249
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_7
    iput v8, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I

    .line 2250
    const-string v6, "noConnectivity"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleConnectivityChange(IZ)V
    .locals 16
    .parameter "netType"
    .parameter "doReset"

    .prologue
    .line 2520
    if-eqz p2, :cond_3

    const/4 v14, 0x3

    .line 2521
    .local v14, resetMask:I
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeExempt(I)Z

    move-result v6

    .line 2531
    .local v6, exempt:Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/QcConnectivityService;->handleDnsConfigurationChange(I)V

    .line 2533
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aget-object v3, v1, p1

    .line 2534
    .local v3, curLp:Landroid/net/LinkProperties;
    const/4 v2, 0x0

    .line 2536
    .local v2, newLp:Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 2545
    if-eqz v3, :cond_5

    .line 2546
    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2547
    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v7

    .line 2548
    .local v7, car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    iget-object v1, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v7, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_9

    .line 2549
    :cond_0
    iget-object v1, v7, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    .line 2550
    .local v12, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_2

    .line 2551
    or-int/lit8 v14, v14, 0x1

    .line 2553
    :cond_2
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_1

    .line 2554
    or-int/lit8 v14, v14, 0x2

    goto :goto_1

    .line 2520
    .end local v2           #newLp:Landroid/net/LinkProperties;
    .end local v3           #curLp:Landroid/net/LinkProperties;
    .end local v6           #exempt:Z
    .end local v7           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #linkAddr:Landroid/net/LinkAddress;
    .end local v14           #resetMask:I
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 2558
    .restart local v2       #newLp:Landroid/net/LinkProperties;
    .restart local v3       #curLp:Landroid/net/LinkProperties;
    .restart local v6       #exempt:Z
    .restart local v7       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v14       #resetMask:I
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleConnectivityChange: addresses changed linkProperty["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " resetMask="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n   car="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 2578
    .end local v7           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2579
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V

    .line 2589
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mCurrentLinkProperties:[Landroid/net/LinkProperties;

    aput-object v2, v1, p1

    .line 2590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mRouteAttributes:[Lcom/android/server/QcConnectivityService$RouteAttributes;

    aget-object v5, v1, p1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/QcConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/QcConnectivityService$RouteAttributes;Z)Z

    move-result v13

    .line 2596
    .local v13, resetDns:Z
    if-nez v14, :cond_7

    if-eqz v13, :cond_e

    .line 2598
    :cond_7
    if-eqz v3, :cond_e

    .line 2600
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2601
    .local v11, iface:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2602
    if-eqz v14, :cond_c

    .line 2603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetConnections("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 2604
    invoke-static {v11, v14}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;I)I

    .line 2608
    and-int/lit8 v1, v14, 0x1

    if-eqz v1, :cond_c

    .line 2609
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v4

    .line 2610
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_b

    .line 2611
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    const/4 v5, 0x0

    invoke-virtual {v1, v11, v5}, Lcom/android/server/connectivity/Vpn;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2610
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2564
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #iface:Ljava/lang/String;
    .end local v13           #resetDns:Z
    .restart local v7       #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleConnectivityChange: address are the same reset per doReset linkProperty["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " resetMask="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2570
    .end local v7           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_a
    const/4 v14, 0x3

    .line 2572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleConnectivityChange: interface not not equivalent reset both linkProperty["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " resetMask="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2613
    .restart local v9       #i:I
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #iface:Ljava/lang/String;
    .restart local v13       #resetDns:Z
    :cond_b
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2616
    .end local v9           #i:I
    :cond_c
    if-eqz v13, :cond_8

    .line 2617
    invoke-direct/range {p0 .. p0}, Lcom/android/server/QcConnectivityService;->flushVmDnsCache()V

    .line 2620
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v1, v11}, Landroid/os/INetworkManagementService;->flushInterfaceDnsCache(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 2621
    :catch_0
    move-exception v8

    .line 2623
    .local v8, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception resetting dns cache: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2613
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v9       #i:I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2627
    .end local v9           #i:I
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t reset connection for type "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2634
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #iface:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v15, v1, p1

    .line 2635
    .local v15, tracker:Landroid/net/NetworkStateTracker;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    move/from16 v0, p1

    invoke-virtual {v1, v0, v15}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(ILandroid/net/NetworkStateTracker;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2642
    invoke-static {v3}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {v2}, Lcom/android/server/connectivity/Nat464Xlat;->isRunningClat(Landroid/net/LinkProperties;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    .line 2646
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v1, v15}, Lcom/android/server/connectivity/Nat464Xlat;->startClat(Landroid/net/NetworkStateTracker;)V

    .line 2656
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v1, p1

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string v4, "linkPropertiesChanged"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2658
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/QcConnectivityService;->isTetheringSupported()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2659
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, p1

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/connectivity/Tethering;->handleTetherIfaceChange(Landroid/net/NetworkInfo;)V

    .line 2662
    :cond_11
    return-void

    .line 2649
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/QcConnectivityService;->mClat:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Nat464Xlat;->stopClat()V

    goto :goto_5
.end method

.method private handleDeprecatedGlobalHttpProxy()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5143
    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "http_proxy"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5145
    .local v3, proxy:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5146
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5147
    .local v0, data:[Ljava/lang/String;
    array-length v6, v0

    if-nez v6, :cond_1

    .line 5163
    .end local v0           #data:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 5151
    .restart local v0       #data:[Ljava/lang/String;
    :cond_1
    aget-object v4, v0, v8

    .line 5152
    .local v4, proxyHost:Ljava/lang/String;
    const/16 v5, 0x1f90

    .line 5153
    .local v5, proxyPort:I
    array-length v6, v0

    if-le v6, v9, :cond_2

    .line 5155
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 5160
    :cond_2
    new-instance v2, Landroid/net/ProxyProperties;

    aget-object v6, v0, v8

    const-string v7, ""

    invoke-direct {v2, v6, v5, v7}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5161
    .local v2, p:Landroid/net/ProxyProperties;
    invoke-virtual {p0, v2}, Lcom/android/server/QcConnectivityService;->setGlobalProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 5156
    .end local v2           #p:Landroid/net/ProxyProperties;
    :catch_0
    move-exception v1

    .line 5157
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private handleDisconnect(Landroid/net/NetworkInfo;)V
    .locals 20
    .parameter "info"

    .prologue
    .line 2008
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v16

    .line 2010
    .local v16, prevNetType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 2013
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService;->removeDataActivityTracking(I)V

    .line 2021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v18

    if-nez v18, :cond_0

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v18, v0

    aget-object v15, v18, v16

    .line 2023
    .local v15, pids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 2027
    .local v14, pid:Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/QcConnectivityService;->reassessPidDns(IZ)V

    goto :goto_0

    .line 2031
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v14           #pid:Ljava/lang/Integer;
    .end local v15           #pids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v18, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2032
    .local v7, intent:Landroid/content/Intent;
    const-string v18, "networkInfo"

    new-instance v19, Landroid/net/NetworkInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2033
    const-string v18, "networkType"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2034
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2035
    const-string v18, "isFailover"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2036
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2038
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 2039
    const-string v18, "reason"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2041
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_3

    .line 2042
    const-string v18, "extraInfo"

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2046
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    invoke-virtual/range {v18 .. v18}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2047
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService;->tryFailover(I)V

    .line 2048
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 2049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v17

    .line 2050
    .local v17, switchTo:Landroid/net/NetworkInfo;
    const-string v18, "otherNetwork"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2056
    .end local v17           #switchTo:Landroid/net/NetworkInfo;
    :cond_4
    :goto_1
    const-string v18, "inetCondition"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2059
    const/4 v4, 0x1

    .line 2060
    .local v4, doReset:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v10

    .line 2061
    .local v10, linkProperties:Landroid/net/LinkProperties;
    if-eqz v10, :cond_8

    .line 2062
    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v13

    .line 2063
    .local v13, oldIface:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 2064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v3, arr$:[Landroid/net/NetworkStateTracker;
    array-length v9, v3

    .local v9, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v9, :cond_8

    aget-object v12, v3, v5

    .line 2065
    .local v12, networkStateTracker:Landroid/net/NetworkStateTracker;
    if-nez v12, :cond_7

    .line 2064
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2052
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v4           #doReset:Z
    .end local v5           #i$:I
    .end local v9           #len$:I
    .end local v10           #linkProperties:Landroid/net/LinkProperties;
    .end local v12           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v13           #oldIface:Ljava/lang/String;
    :cond_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I

    .line 2053
    const-string v18, "noConnectivity"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 2066
    .restart local v3       #arr$:[Landroid/net/NetworkStateTracker;
    .restart local v4       #doReset:Z
    .restart local v5       #i$:I
    .restart local v9       #len$:I
    .restart local v10       #linkProperties:Landroid/net/LinkProperties;
    .restart local v12       #networkStateTracker:Landroid/net/NetworkStateTracker;
    .restart local v13       #oldIface:Ljava/lang/String;
    :cond_7
    invoke-interface {v12}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    .line 2067
    .local v11, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 2068
    invoke-interface {v12}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v8

    .line 2069
    .local v8, l:Landroid/net/LinkProperties;
    if-eqz v8, :cond_5

    .line 2070
    invoke-virtual {v8}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2071
    const/4 v4, 0x0

    .line 2080
    .end local v3           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v5           #i$:I
    .end local v8           #l:Landroid/net/LinkProperties;
    .end local v9           #len$:I
    .end local v11           #networkInfo:Landroid/net/NetworkInfo;
    .end local v12           #networkStateTracker:Landroid/net/NetworkStateTracker;
    .end local v13           #oldIface:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/server/QcConnectivityService;->handleConnectivityChange(IZ)V

    .line 2082
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2083
    .local v6, immediateIntent:Landroid/content/Intent;
    const-string v18, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2084
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2085
    invoke-direct/range {p0 .. p0}, Lcom/android/server/QcConnectivityService;->getConnectivityChangeDelay()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/android/server/QcConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 2090
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    invoke-interface/range {v18 .. v18}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/android/server/QcConnectivityService;->getConnectivityChangeDelay()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/QcConnectivityService;->sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V

    .line 2094
    :cond_9
    return-void
.end method

.method private handleDnsConfigurationChange(I)V
    .locals 13
    .parameter "netType"

    .prologue
    .line 2956
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v0, p1

    .line 2957
    .local v8, nt:Landroid/net/NetworkStateTracker;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2958
    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    .line 2959
    .local v9, p:Landroid/net/LinkProperties;
    if-nez v9, :cond_1

    .line 2985
    .end local v9           #p:Landroid/net/LinkProperties;
    :cond_0
    :goto_0
    return-void

    .line 2960
    .restart local v9       #p:Landroid/net/LinkProperties;
    :cond_1
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v3

    .line 2961
    .local v3, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2962
    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 2963
    .local v1, network:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mDnsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2964
    :try_start_0
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/QcConnectivityService;->updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V

    .line 2965
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2983
    .end local v1           #network:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->flushVmDnsCache()V

    goto :goto_0

    .line 2965
    .restart local v1       #network:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2968
    .end local v1           #network:Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v4, v5}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2974
    :goto_1
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v11, v0, p1

    .line 2975
    .local v11, pids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 2977
    .local v10, pid:Ljava/lang/Integer;
    :try_start_3
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v2, v4}, Landroid/os/INetworkManagementService;->setDnsInterfaceForPid(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 2978
    :catch_0
    move-exception v6

    .line 2979
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "QcConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception setting interface for pid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2970
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #pid:Ljava/lang/Integer;
    .end local v11           #pids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v6

    .line 2971
    .restart local v6       #e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception setting dns servers: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleInetConditionChange(II)V
    .locals 6
    .parameter "netType"
    .parameter "condition"

    .prologue
    .line 4969
    iget v1, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 4970
    const-string v1, "handleInetConditionChange: no active default network - ignore"

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 5002
    :cond_0
    :goto_0
    return-void

    .line 4973
    :cond_1
    iget v1, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    if-eq v1, p1, :cond_2

    .line 4974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionChange: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - ignore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4983
    :cond_2
    iput p2, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetCondition:I

    .line 4985
    iget-boolean v1, p0, Lcom/android/server/QcConnectivityService;->mInetConditionChangeInFlight:Z

    if-nez v1, :cond_0

    .line 4988
    iget v1, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetCondition:I

    const/16 v2, 0x32

    if-le v1, v2, :cond_3

    .line 4989
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_up_delay"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4995
    .local v0, delay:I
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/QcConnectivityService;->mInetConditionChangeInFlight:Z

    .line 4996
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    iget v4, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    iget v5, p0, Lcom/android/server/QcConnectivityService;->mDefaultConnectionSequence:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4992
    .end local v0           #delay:I
    :cond_3
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inet_condition_debounce_down_delay"

    const/16 v3, 0xbb8

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0       #delay:I
    goto :goto_1
.end method

.method private handleInetConditionHoldEnd(II)V
    .locals 3
    .parameter "netType"
    .parameter "sequence"

    .prologue
    .line 5006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInetConditionHoldEnd: net="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", published condition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 5010
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/QcConnectivityService;->mInetConditionChangeInFlight:Z

    .line 5012
    iget v1, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 5013
    const-string v1, "handleInetConditionHoldEnd: no active default network - ignoring"

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 5034
    :goto_0
    return-void

    .line 5016
    :cond_0
    iget v1, p0, Lcom/android/server/QcConnectivityService;->mDefaultConnectionSequence:I

    if-eq v1, p2, :cond_1

    .line 5017
    const-string v1, "handleInetConditionHoldEnd: event hold for obsolete network - ignoring"

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5027
    :cond_1
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5028
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5029
    const-string v1, "handleInetConditionHoldEnd: default network not connected - ignoring"

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5032
    :cond_2
    iget v1, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetCondition:I

    iput v1, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I

    .line 5033
    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    goto :goto_0
.end method

.method private handleMobileProvisioningAction(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 6182
    const/4 v4, 0x5

    invoke-direct {p0, v5, v4, v6, v6}, Lcom/android/server/QcConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 6186
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->getProvisioningNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 6187
    .local v3, ni:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6188
    const-string v4, "handleMobileProvisioningAction: on provisioning network"

    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 6189
    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v4, v5

    check-cast v1, Landroid/net/MobileDataStateTracker;

    .line 6191
    .local v1, mdst:Landroid/net/MobileDataStateTracker;
    invoke-virtual {v1, p1}, Landroid/net/MobileDataStateTracker;->enableMobileProvisioning(Ljava/lang/String;)V

    .line 6205
    .end local v1           #mdst:Landroid/net/MobileDataStateTracker;
    :goto_0
    return-void

    .line 6193
    :cond_0
    const-string v4, "handleMobileProvisioningAction: on default network"

    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 6194
    const-string v4, "android.intent.action.MAIN"

    const-string v5, "android.intent.category.APP_BROWSER"

    invoke-static {v4, v5}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 6196
    .local v2, newIntent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 6197
    const/high16 v4, 0x1040

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6200
    :try_start_0
    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6201
    :catch_0
    move-exception v0

    .line 6202
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMobileProvisioningAction: startActivity failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNetworkSamplingTimeout()V
    .locals 11

    .prologue
    .line 6512
    const-string v8, "Sampling interval elapsed, updating statistics .."

    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 6515
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6517
    .local v4, mapIfaceToSample:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/net/SamplingDataTracker$SamplingSnapshot;>;"
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v7, v0, v1

    .line 6518
    .local v7, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_0

    .line 6519
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 6520
    .local v2, ifaceName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 6521
    const/4 v8, 0x0

    invoke-interface {v4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6517
    .end local v2           #ifaceName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6527
    .end local v7           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1
    invoke-static {v4}, Landroid/net/SamplingDataTracker;->getSamplingSnapshots(Ljava/util/Map;)V

    .line 6530
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v7, v0, v1

    .line 6531
    .restart local v7       #tracker:Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_2

    .line 6532
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 6533
    .restart local v2       #ifaceName:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .line 6534
    .local v6, ss:Landroid/net/SamplingDataTracker$SamplingSnapshot;
    if-eqz v6, :cond_2

    .line 6536
    invoke-interface {v7, v6}, Landroid/net/NetworkStateTracker;->stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 6538
    invoke-interface {v7, v6}, Landroid/net/NetworkStateTracker;->startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 6530
    .end local v2           #ifaceName:Ljava/lang/String;
    .end local v6           #ss:Landroid/net/SamplingDataTracker$SamplingSnapshot;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6543
    .end local v7           #tracker:Landroid/net/NetworkStateTracker;
    :cond_3
    const-string v8, "Done."

    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 6545
    iget-object v8, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "connectivity_sampling_interval_in_seconds"

    const/16 v10, 0x2d0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 6549
    .local v5, samplingIntervalInSeconds:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting timer for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 6551
    mul-int/lit16 v8, v5, 0x3e8

    iget-object v9, p0, Lcom/android/server/QcConnectivityService;->mSampleIntervalElapsedIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/QcConnectivityService;->setAlarm(ILandroid/app/PendingIntent;)V

    .line 6552
    return-void
.end method

.method private handleSetDependencyMet(IZ)V
    .locals 2
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetDependencyMet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 1847
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setDependencyMet(Z)V

    .line 1849
    :cond_0
    return-void
.end method

.method private handleSetMobileData(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 1926
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 1936
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Landroid/net/NetworkStateTracker;->setUserDataEnable(Z)V

    .line 1938
    :cond_1
    return-void
.end method

.method private handleSetNetworkPreference(I)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 918
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    iget v1, p0, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    if-eq v1, p1, :cond_0

    .line 922
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 923
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "network_preference"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 924
    monitor-enter p0

    .line 925
    :try_start_0
    iput p1, p0, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    .line 926
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforcePreference()V

    .line 930
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    return-void

    .line 926
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleSetPolicyDataEnable(IZ)V
    .locals 2
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 1950
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1951
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1952
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1953
    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setPolicyDataEnable(Z)V

    .line 1956
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :cond_0
    return-void
.end method

.method private handleUpdateBlockedUids(IZ)V
    .locals 0
    .parameter "uid"
    .parameter "isBlocked"

    .prologue
    .line 4829
    #calls: Lcom/android/server/ConnectivityService;->updateBlockedUids(IZ)V
    invoke-static {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->access$19101(Lcom/android/server/QcConnectivityService;IZ)V

    .line 4830
    return-void
.end method

.method private isMobileDataStateTrackerReady()Z
    .locals 3

    .prologue
    .line 5651
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    const/4 v2, 0x5

    aget-object v0, v1, v2

    check-cast v0, Landroid/net/MobileDataStateTracker;

    .line 5653
    .local v0, mdst:Landroid/net/MobileDataStateTracker;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/MobileDataStateTracker;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNetworkBlocked(Landroid/net/NetworkStateTracker;I)Z
    .locals 7
    .parameter "tracker"
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 992
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, iface:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 997
    :try_start_0
    iget-object v5, p0, Lcom/android/server/QcConnectivityService;->mMeteredIfaces:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 998
    .local v1, networkCostly:Z
    iget-object v5, p0, Lcom/android/server/QcConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 999
    .local v2, uidRules:I
    monitor-exit v4

    .line 1001
    if-eqz v1, :cond_0

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 1002
    const/4 v3, 0x1

    .line 1006
    :cond_0
    return v3

    .line 999
    .end local v1           #networkCostly:Z
    .end local v2           #uidRules:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isNetworkMeteredUnchecked(I)Z
    .locals 2
    .parameter "networkType"

    .prologue
    .line 1231
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1232
    .local v0, state:Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 1234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v1, v0}, Landroid/net/INetworkPolicyManager;->isNetworkMetered(Landroid/net/NetworkState;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1238
    :goto_0
    return v1

    .line 1235
    :catch_0
    move-exception v1

    .line 1238
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNewNetTypePreferredOverCurrentNetType(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 2336
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v1, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    iget v0, v0, Landroid/net/NetworkConfig;->priority:I

    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v1, v1, p1

    iget v1, v1, Landroid/net/NetworkConfig;->priority:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    iget v1, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    if-ne v0, v1, :cond_2

    .line 2339
    :cond_1
    const/4 v0, 0x0

    .line 2341
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadGlobalProxy()V
    .locals 8

    .prologue
    .line 5095
    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 5096
    .local v5, res:Landroid/content/ContentResolver;
    const-string v6, "global_http_proxy_host"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5097
    .local v1, host:Ljava/lang/String;
    const-string v6, "global_http_proxy_port"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 5098
    .local v3, port:I
    const-string v6, "global_http_proxy_exclusion_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5100
    .local v0, exclList:Ljava/lang/String;
    const-string v6, "global_proxy_pac_url"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5101
    .local v2, pacFileUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 5103
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5104
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, v2}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;)V

    .line 5108
    .local v4, proxyProperties:Landroid/net/ProxyProperties;
    :goto_0
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5109
    :try_start_0
    iput-object v4, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 5110
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5112
    .end local v4           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_1
    return-void

    .line 5106
    :cond_2
    new-instance v4, Landroid/net/ProxyProperties;

    invoke-direct {v4, v1, v3, v0}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .restart local v4       #proxyProperties:Landroid/net/ProxyProperties;
    goto :goto_0

    .line 5110
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 5203
    const-string v0, "QcConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5204
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 5207
    const-string v0, "QcConnectivityService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5208
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "s"
    .parameter "e"

    .prologue
    .line 5211
    const-string v0, "QcConnectivityService"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5212
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 5219
    const-string v0, "QcConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5220
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 5215
    const-string v0, "QcConnectivityService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5216
    return-void
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 2165
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_0

    .line 2166
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 2169
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2170
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2171
    const-string v1, "networkType"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2172
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2173
    const-string v1, "isFailover"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2174
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2176
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2177
    const-string v1, "reason"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2179
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2180
    const-string v1, "extraInfo"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2183
    :cond_3
    const-string v1, "inetCondition"

    iget v2, p0, Lcom/android/server/QcConnectivityService;->mDefaultInetConditionPublished:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2184
    return-object v0
.end method

.method private static makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    .locals 20
    .parameter "context"
    .parameter "trackerHandler"

    .prologue
    .line 822
    const/4 v13, 0x0

    .line 823
    .local v13, wimaxStateTrackerClass:Ljava/lang/Class;
    const/4 v10, 0x0

    .line 831
    .local v10, wimaxServiceClass:Ljava/lang/Class;
    const/4 v12, 0x0

    .line 833
    .local v12, wimaxStateTracker:Landroid/net/NetworkStateTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1110049

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 836
    .local v3, isWimaxEnabled:Z
    if-eqz v3, :cond_0

    .line 838
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040033

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 840
    .local v6, wimaxJarLocation:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040034

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 842
    .local v7, wimaxLibLocation:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040035

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 844
    .local v9, wimaxManagerClassName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040036

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 846
    .local v11, wimaxServiceClassName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1040037

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 849
    .local v14, wimaxStateTrackerClassName:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "wimaxJarLocation: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 850
    new-instance v5, Ldalvik/system/DexClassLoader;

    new-instance v17, Landroid/content/ContextWrapper;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v5, v6, v0, v7, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 855
    .local v5, wimaxClassLoader:Ldalvik/system/DexClassLoader;
    :try_start_1
    invoke-virtual {v5, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 856
    .local v8, wimaxManagerClass:Ljava/lang/Class;
    invoke-virtual {v5, v14}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 857
    invoke-virtual {v5, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 868
    :try_start_2
    const-string v17, "Starting Wimax Service... "

    invoke-static/range {v17 .. v17}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 870
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-class v19, Landroid/os/Handler;

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 872
    .local v16, wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p0, v17, v18

    const/16 v18, 0x1

    aput-object p1, v17, v18

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/net/NetworkStateTracker;

    move-object v12, v0

    .line 875
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-class v19, Landroid/content/Context;

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v13, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v15

    .line 877
    .local v15, wmxSrvConst:Ljava/lang/reflect/Constructor;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 878
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p0, v17, v18

    const/16 v18, 0x1

    aput-object v12, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 879
    .local v4, svcInvoker:Landroid/os/IBinder;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 881
    const-string v17, "WiMax"

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v12

    .line 892
    .end local v4           #svcInvoker:Landroid/os/IBinder;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v8           #wimaxManagerClass:Ljava/lang/Class;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    .end local v15           #wmxSrvConst:Ljava/lang/reflect/Constructor;
    .end local v16           #wmxStTrkrConst:Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v17

    .line 858
    .restart local v5       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v6       #wimaxJarLocation:Ljava/lang/String;
    .restart local v7       #wimaxLibLocation:Ljava/lang/String;
    .restart local v9       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v11       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v14       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 859
    .local v2, ex:Ljava/lang/ClassNotFoundException;
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception finding Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 860
    const/16 v17, 0x0

    goto :goto_0

    .line 862
    .end local v2           #ex:Ljava/lang/ClassNotFoundException;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 863
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v17, "Wimax Resources does not exist!!! "

    invoke-static/range {v17 .. v17}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 864
    const/16 v17, 0x0

    goto :goto_0

    .line 883
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v5       #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .restart local v6       #wimaxJarLocation:Ljava/lang/String;
    .restart local v7       #wimaxLibLocation:Ljava/lang/String;
    .restart local v8       #wimaxManagerClass:Ljava/lang/Class;
    .restart local v9       #wimaxManagerClassName:Ljava/lang/String;
    .restart local v11       #wimaxServiceClassName:Ljava/lang/String;
    .restart local v14       #wimaxStateTrackerClassName:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 884
    .local v2, ex:Ljava/lang/Exception;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception creating Wimax classes: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 885
    const/16 v17, 0x0

    goto :goto_0

    .line 888
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #wimaxClassLoader:Ldalvik/system/DexClassLoader;
    .end local v6           #wimaxJarLocation:Ljava/lang/String;
    .end local v7           #wimaxLibLocation:Ljava/lang/String;
    .end local v8           #wimaxManagerClass:Ljava/lang/Class;
    .end local v9           #wimaxManagerClassName:Ljava/lang/String;
    .end local v11           #wimaxServiceClassName:Ljava/lang/String;
    .end local v14           #wimaxStateTrackerClassName:Ljava/lang/String;
    :cond_0
    const-string v17, "Wimax is not enabled or not added to the network attributes!!! "

    invoke-static/range {v17 .. v17}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 889
    const/16 v17, 0x0

    goto :goto_0
.end method

.method private modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z
    .locals 10
    .parameter "lp"
    .parameter "r"
    .parameter "cycleCount"
    .parameter "doAdd"
    .parameter "toDefaultTable"
    .parameter "exempt"

    .prologue
    .line 1726
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1727
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifyRoute got unexpected null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 1728
    const/4 v0, 0x0

    .line 1816
    :goto_0
    return v0

    .line 1731
    :cond_1
    const/16 v0, 0xa

    if-le p3, v0, :cond_2

    .line 1732
    const-string v0, "Error modifying route - too much recursion"

    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 1733
    const/4 v0, 0x0

    goto :goto_0

    .line 1736
    :cond_2
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v9

    .line 1737
    .local v9, ifaceName:Ljava/lang/String;
    if-nez v9, :cond_3

    .line 1738
    const-string v0, "Error modifying route - no interface name"

    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 1739
    const/4 v0, 0x0

    goto :goto_0

    .line 1741
    :cond_3
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1742
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 1743
    .local v2, bestRoute:Landroid/net/RouteInfo;
    if-eqz v2, :cond_4

    .line 1744
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1746
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 1754
    :goto_1
    add-int/lit8 v3, p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/QcConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    .line 1757
    .end local v2           #bestRoute:Landroid/net/RouteInfo;
    :cond_4
    if-eqz p4, :cond_8

    .line 1760
    if-eqz p5, :cond_7

    .line 1761
    :try_start_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    :try_start_1
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1764
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1765
    if-eqz p6, :cond_5

    .line 1766
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    .line 1767
    .local v7, dest:Landroid/net/LinkAddress;
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1768
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v7}, Landroid/os/INetworkManagementService;->setHostExemption(Landroid/net/LinkAddress;)V

    .line 1769
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1772
    .end local v7           #dest:Landroid/net/LinkAddress;
    :cond_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1816
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1750
    .restart local v2       #bestRoute:Landroid/net/RouteInfo;
    :cond_6
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_1

    .line 1772
    .end local v2           #bestRoute:Landroid/net/RouteInfo;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1776
    :catch_0
    move-exception v8

    .line 1778
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception trying to add a route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 1779
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1774
    .end local v8           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->addSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1784
    :cond_8
    if-eqz p5, :cond_a

    .line 1785
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mRoutesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1786
    :try_start_5
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1787
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    if-nez v0, :cond_9

    .line 1790
    :try_start_6
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V

    .line 1791
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v7

    .line 1792
    .restart local v7       #dest:Landroid/net/LinkAddress;
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1793
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v7}, Landroid/os/INetworkManagementService;->clearHostExemption(Landroid/net/LinkAddress;)V

    .line 1794
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mExemptAddresses:Ljava/util/Collection;

    invoke-interface {v0, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1804
    .end local v7           #dest:Landroid/net/LinkAddress;
    :cond_9
    :try_start_7
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 1796
    :catch_1
    move-exception v8

    .line 1799
    .restart local v8       #e:Ljava/lang/Exception;
    const/4 v0, 0x0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 1808
    .end local v8           #e:Ljava/lang/Exception;
    :cond_a
    :try_start_9
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v0, v9, p2}, Landroid/os/INetworkManagementService;->removeSecondaryRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 1809
    :catch_2
    move-exception v8

    .line 1812
    .restart local v8       #e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z
    .locals 8
    .parameter "lp"
    .parameter "addr"
    .parameter "doAdd"
    .parameter "toDefaultTable"
    .parameter "exempt"

    .prologue
    .line 1707
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 1708
    .local v2, bestRoute:Landroid/net/RouteInfo;
    if-nez v2, :cond_0

    .line 1709
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    .line 1721
    :goto_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/QcConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    return v0

    .line 1711
    :cond_0
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    .line 1712
    .local v7, iface:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1714
    invoke-static {p2, v7}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_0

    .line 1718
    :cond_1
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p2, v0, v7}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v2

    goto :goto_0
.end method

.method private onUserStart(I)V
    .locals 7
    .parameter "userId"

    .prologue
    .line 6434
    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v6

    .line 6435
    :try_start_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 6436
    .local v0, userVpn:Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_0

    .line 6437
    const-string v1, "Starting user already has a VPN"

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 6438
    monitor-exit v6

    .line 6444
    :goto_0
    return-void

    .line 6440
    :cond_0
    new-instance v0, Lcom/android/server/connectivity/Vpn;

    .end local v0           #userVpn:Lcom/android/server/connectivity/Vpn;
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mVpnCallback:Lcom/android/server/QcConnectivityService$VpnCallback;

    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService$VpnCallback;Landroid/os/INetworkManagementService;Landroid/net/IConnectivityManager;I)V

    .line 6441
    .restart local v0       #userVpn:Lcom/android/server/connectivity/Vpn;
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6442
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/Vpn;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    .line 6443
    monitor-exit v6

    goto :goto_0

    .end local v0           #userVpn:Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUserStop(I)V
    .locals 3
    .parameter "userId"

    .prologue
    .line 6447
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 6448
    :try_start_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 6449
    .local v0, userVpn:Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_0

    .line 6450
    const-string v1, "Stopping user has no VPN"

    invoke-static {v1}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 6451
    monitor-exit v2

    .line 6455
    :goto_0
    return-void

    .line 6453
    :cond_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 6454
    monitor-exit v2

    goto :goto_0

    .end local v0           #userVpn:Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reassessPidDns(IZ)V
    .locals 11
    .parameter "pid"
    .parameter "doBump"

    .prologue
    .line 2874
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 2875
    .local v5, myPid:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mPriorityList:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget v2, v0, v3

    .line 2876
    .local v2, i:I
    iget-object v8, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2875
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2879
    :cond_1
    iget-object v8, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v6, v8, v2

    .line 2880
    .local v6, nt:Landroid/net/NetworkStateTracker;
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2882
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v7

    .line 2883
    .local v7, p:Landroid/net/LinkProperties;
    if-eqz v7, :cond_0

    .line 2884
    iget-object v8, p0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v8, v8, v2

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2886
    :try_start_0
    iget-object v8, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, p1}, Landroid/os/INetworkManagementService;->setDnsInterfaceForPid(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2900
    .end local v2           #i:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #p:Landroid/net/LinkProperties;
    :goto_1
    return-void

    .line 2887
    .restart local v2       #i:I
    .restart local v6       #nt:Landroid/net/NetworkStateTracker;
    .restart local v7       #p:Landroid/net/LinkProperties;
    :catch_0
    move-exception v1

    .line 2888
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "QcConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception reasseses pid dns: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2896
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    .end local v7           #p:Landroid/net/LinkProperties;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v8, p1}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForPid(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2897
    :catch_1
    move-exception v1

    .line 2898
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v8, "QcConnectivityService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception clear interface from pid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private removeDataActivityTracking(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 2500
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v2, p1

    .line 2501
    .local v1, net:Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2503
    .local v0, iface:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 2507
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2511
    :cond_1
    :goto_0
    return-void

    .line 2508
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    .locals 7
    .parameter "p"
    .parameter "r"
    .parameter "toDefaultTable"

    .prologue
    const/4 v3, 0x0

    .line 1694
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/QcConnectivityService;->modifyRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;IZZZ)Z

    move-result v0

    return v0
.end method

.method private removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z
    .locals 6
    .parameter "lp"
    .parameter "addr"

    .prologue
    const/4 v3, 0x0

    .line 1702
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/QcConnectivityService;->modifyRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;ZZZ)Z

    move-result v0

    return v0
.end method

.method private sendConnectedBroadcastDelayed(Landroid/net/NetworkInfo;I)V
    .locals 1
    .parameter "info"
    .parameter "delayMs"

    .prologue
    .line 2156
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/QcConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2157
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/QcConnectivityService;->sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V

    .line 2158
    return-void
.end method

.method private sendDataActivityBroadcast(IZ)V
    .locals 11
    .parameter "deviceType"
    .parameter "active"

    .prologue
    .line 2196
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2197
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "deviceType"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2198
    const-string v0, "isActive"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 2201
    .local v9, ident:J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2206
    return-void

    .line 2204
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "bcastType"

    .prologue
    .line 2188
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2189
    return-void
.end method

.method private sendGeneralBroadcastDelayed(Landroid/net/NetworkInfo;Ljava/lang/String;I)V
    .locals 1
    .parameter "info"
    .parameter "bcastType"
    .parameter "delayMs"

    .prologue
    .line 2192
    invoke-direct {p0, p1, p2}, Lcom/android/server/QcConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/QcConnectivityService;->sendStickyBroadcastDelayed(Landroid/content/Intent;I)V

    .line 2193
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2161
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/QcConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2162
    return-void
.end method

.method private sendProxyBroadcast(Landroid/net/ProxyProperties;)V
    .locals 6
    .parameter "proxy"

    .prologue
    .line 5166
    if-nez p1, :cond_0

    new-instance p1, Landroid/net/ProxyProperties;

    .end local p1
    const-string v3, ""

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct {p1, v3, v4, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 5167
    .restart local p1
    :cond_0
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyProperties;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5179
    :goto_0
    return-void

    .line 5168
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending Proxy Broadcast for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 5169
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5170
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x2400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5172
    const-string v3, "proxy"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5175
    .local v0, ident:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5177
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2270
    monitor-enter p0

    .line 2271
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/QcConnectivityService;->mSystemReady:Z

    if-nez v2, :cond_0

    .line 2272
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/android/server/QcConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2274
    :cond_0
    const/high16 v2, 0x400

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2281
    .local v0, ident:J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2283
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2285
    monitor-exit p0

    .line 2286
    return-void

    .line 2283
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2285
    .end local v0           #ident:J
    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private sendStickyBroadcastDelayed(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "delayMs"

    .prologue
    .line 2289
    if-gtz p2, :cond_0

    .line 2290
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2299
    :goto_0
    return-void

    .line 2296
    :cond_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .locals 5
    .parameter "bufferSizes"

    .prologue
    .line 2848
    :try_start_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2850
    .local v2, values:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 2851
    const-string v1, "/sys/kernel/ipv4/tcp_"

    .line 2852
    .local v1, prefix:Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2857
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    .end local v1           #prefix:Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_0
    return-void

    .line 2859
    .restart local v2       #values:[Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid buffersize string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2861
    .end local v2           #values:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2862
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEnableFailFastMobileData(I)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 5641
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 5642
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 5646
    .local v0, tag:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x72

    invoke-virtual {v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5648
    return-void

    .line 5644
    .end local v0           #tag:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .restart local v0       #tag:I
    goto :goto_0
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 4
    .parameter "tracker"

    .prologue
    .line 5559
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 5560
    .local v0, existing:Lcom/android/server/net/LockdownVpnTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 5561
    if-eqz v0, :cond_0

    .line 5562
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 5566
    :cond_0
    if-eqz p1, :cond_1

    .line 5567
    :try_start_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V

    .line 5568
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const-string v2, "lo"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallInterfaceRule(Ljava/lang/String;Z)V

    .line 5569
    iput-object p1, p0, Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 5570
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 5577
    :goto_0
    return-void

    .line 5572
    :cond_1
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setFirewallEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5574
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "visible"
    .parameter "networkType"
    .parameter "extraInfo"
    .parameter "url"

    .prologue
    .line 6213
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setProvNotificationVisible: E visible="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " networkType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " extraInfo="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 6217
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 6218
    .local v7, r:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 6221
    .local v5, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_0

    .line 6226
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 6227
    .local v4, notification:Landroid/app/Notification;
    packed-switch p2, :pswitch_data_0

    .line 6251
    :pswitch_0
    const v9, 0x1040437

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 6252
    .local v8, title:Ljava/lang/CharSequence;
    const v9, 0x1040438

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6254
    .local v1, details:Ljava/lang/CharSequence;
    const v2, 0x1080588

    .line 6255
    .local v2, icon:I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6256
    .local v3, intent:Landroid/content/Intent;
    const/high16 v9, 0x1040

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6258
    iget-object v9, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 6262
    :goto_0
    const-wide/16 v9, 0x0

    iput-wide v9, v4, Landroid/app/Notification;->when:J

    .line 6263
    iput v2, v4, Landroid/app/Notification;->icon:I

    .line 6264
    const/16 v9, 0x10

    iput v9, v4, Landroid/app/Notification;->flags:I

    .line 6265
    iput-object v8, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 6266
    iget-object v9, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    iget-object v10, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v9, v8, v1, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 6269
    :try_start_0
    const-string v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6282
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v2           #icon:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #notification:Landroid/app/Notification;
    .end local v8           #title:Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/QcConnectivityService;->mIsNotificationVisible:Z

    .line 6283
    return-void

    .line 6229
    .restart local v4       #notification:Landroid/app/Notification;
    :pswitch_1
    const v9, 0x1040436

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 6230
    .restart local v8       #title:Ljava/lang/CharSequence;
    const v9, 0x1040438

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p3, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6232
    .restart local v1       #details:Ljava/lang/CharSequence;
    const v2, 0x108058c

    .line 6233
    .restart local v2       #icon:I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6234
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v9, 0x1040

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6236
    iget-object v9, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 6240
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v2           #icon:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v8           #title:Ljava/lang/CharSequence;
    :pswitch_2
    const v9, 0x1040437

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 6243
    .restart local v8       #title:Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/server/QcConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 6244
    .restart local v1       #details:Ljava/lang/CharSequence;
    const v2, 0x1080588

    .line 6245
    .restart local v2       #icon:I
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.android.server.connectivityservice.CONNECTED_TO_PROVISIONING_NETWORK_ACTION"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6246
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v9, "EXTRA_URL"

    move-object/from16 v0, p4

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6247
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6248
    iget-object v9, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 6270
    :catch_0
    move-exception v6

    .line 6271
    .local v6, npe:Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setNotificaitionVisible: visible notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 6272
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 6276
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v2           #icon:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #notification:Landroid/app/Notification;
    .end local v6           #npe:Ljava/lang/NullPointerException;
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_0
    :try_start_1
    const-string v9, "CaptivePortal.Notification"

    invoke-virtual {v5, v9, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 6277
    :catch_1
    move-exception v6

    .line 6278
    .restart local v6       #npe:Ljava/lang/NullPointerException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setNotificaitionVisible: cancel notificationManager npe="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 6279
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 6227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setupDataActivityTracking(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 2468
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, p1

    .line 2469
    .local v1, thisNet:Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2473
    .local v0, iface:Ljava/lang/String;
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2474
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_activity_timeout_mobile"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2478
    .local v2, timeout:I
    const/4 p1, 0x0

    .line 2488
    :goto_0
    if-lez v2, :cond_0

    if-eqz v0, :cond_0

    .line 2490
    :try_start_0
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2494
    :cond_0
    :goto_1
    return-void

    .line 2479
    .end local v2           #timeout:I
    :cond_1
    const/4 v3, 0x1

    if-ne v3, p1, :cond_2

    .line 2480
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "data_activity_timeout_wifi"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .restart local v2       #timeout:I
    goto :goto_0

    .line 2485
    .end local v2           #timeout:I
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #timeout:I
    goto :goto_0

    .line 2491
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private stopUsingNetworkFeature(Lcom/android/server/QcConnectivityService$FeatureUser;Z)I
    .locals 14
    .parameter "u"
    .parameter "ignoreDups"

    .prologue
    .line 1521
    iget v4, p1, Lcom/android/server/QcConnectivityService$FeatureUser;->mNetworkType:I

    .line 1522
    .local v4, networkType:I
    iget-object v2, p1, Lcom/android/server/QcConnectivityService$FeatureUser;->mFeature:Ljava/lang/String;

    .line 1523
    .local v2, feature:Ljava/lang/String;
    iget v5, p1, Lcom/android/server/QcConnectivityService$FeatureUser;->mPid:I

    .line 1524
    .local v5, pid:I
    iget v9, p1, Lcom/android/server/QcConnectivityService$FeatureUser;->mUid:I

    .line 1526
    .local v9, uid:I
    const/4 v8, 0x0

    .line 1527
    .local v8, tracker:Landroid/net/NetworkStateTracker;
    const/4 v0, 0x0

    .line 1533
    .local v0, callTeardown:Z
    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1535
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stopUsingNetworkFeature: net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", net is invalid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 1538
    const/4 v12, -0x1

    .line 1615
    :goto_0
    return v12

    .line 1543
    :cond_0
    monitor-enter p0

    .line 1545
    :try_start_0
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1550
    const/4 v12, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1606
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 1552
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/QcConnectivityService$FeatureUser;->unlinkDeathRecipient()V

    .line 1553
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mFeatureUsers:Ljava/util/List;

    iget-object v13, p0, Lcom/android/server/QcConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v13, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1561
    if-nez p2, :cond_3

    .line 1562
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/QcConnectivityService$FeatureUser;

    .line 1563
    .local v11, x:Lcom/android/server/QcConnectivityService$FeatureUser;
    invoke-virtual {v11, p1}, Lcom/android/server/QcConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/QcConnectivityService$FeatureUser;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1565
    const/4 v12, 0x1

    monitor-exit p0

    goto :goto_0

    .line 1571
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v11           #x:Lcom/android/server/QcConnectivityService$FeatureUser;
    :cond_3
    invoke-virtual {p0, v4, v2}, Lcom/android/server/QcConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v10

    .line 1573
    .local v10, usedNetworkType:I
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v8, v12, v10

    .line 1574
    if-nez v8, :cond_4

    .line 1576
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stopUsingNetworkFeature: net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " no known tracker for used net type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 1579
    const/4 v12, -0x1

    monitor-exit p0

    goto :goto_0

    .line 1581
    :cond_4
    if-eq v10, v4, :cond_6

    .line 1582
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 1583
    .local v1, currentPid:Ljava/lang/Integer;
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v12, v12, v10

    invoke-interface {v12, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 1587
    .local v6, token:J
    const/4 v12, 0x1

    :try_start_2
    invoke-direct {p0, v5, v12}, Lcom/android/server/QcConnectivityService;->reassessPidDns(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1589
    :try_start_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1591
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->flushVmDnsCache()V

    .line 1592
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v12, v12, v10

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_5

    .line 1597
    const/4 v12, 0x1

    monitor-exit p0

    goto/16 :goto_0

    .line 1589
    :catchall_1
    move-exception v12

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12

    .line 1599
    :cond_5
    const/4 v0, 0x1

    .line 1606
    .end local v1           #currentPid:Ljava/lang/Integer;
    .end local v6           #token:J
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1608
    if-eqz v0, :cond_7

    .line 1610
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stopUsingNetworkFeature: teardown net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 1612
    invoke-interface {v8}, Landroid/net/NetworkStateTracker;->teardown()Z

    .line 1613
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1602
    :cond_6
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "stopUsingNetworkFeature: net "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not a known feature - dropping"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1615
    :cond_7
    const/4 v12, -0x1

    goto/16 :goto_0
.end method

.method private teardown(Landroid/net/NetworkStateTracker;)Z
    .locals 2
    .parameter "netTracker"

    .prologue
    const/4 v0, 0x1

    .line 979
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->teardown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    invoke-interface {p1, v0}, Landroid/net/NetworkStateTracker;->setTeardownRequested(Z)V

    .line 983
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwIfLockdownEnabled()V
    .locals 2

    .prologue
    .line 5580
    iget-boolean v0, p0, Lcom/android/server/QcConnectivityService;->mLockdownEnabled:Z

    if-eqz v0, :cond_0

    .line 5581
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5583
    :cond_0
    return-void
.end method

.method private tryFailover(I)V
    .locals 5
    .parameter "prevNetType"

    .prologue
    .line 2102
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2103
    iget v3, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    if-ne v3, p1, :cond_0

    .line 2105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryFailover: set mActiveDefaultNetwork=-1, prevNetType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 2107
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    .line 2118
    :cond_0
    const/4 v2, 0x0

    .local v2, checkType:I
    :goto_0
    const/16 v3, 0xe

    if-gt v2, v3, :cond_5

    .line 2119
    if-ne v2, p1, :cond_2

    .line 2118
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2120
    :cond_2
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 2121
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/net/NetworkConfig;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2122
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    .line 2137
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v1, v3, v2

    .line 2138
    .local v1, checkTracker:Landroid/net/NetworkStateTracker;
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2139
    .local v0, checkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2140
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2141
    invoke-interface {v1}, Landroid/net/NetworkStateTracker;->reconnect()Z

    .line 2143
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to switch to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2146
    .end local v0           #checkInfo:Landroid/net/NetworkInfo;
    .end local v1           #checkTracker:Landroid/net/NetworkStateTracker;
    .end local v2           #checkType:I
    :cond_5
    return-void
.end method

.method private updateDnsLocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 9
    .parameter "network"
    .parameter "iface"
    .parameter
    .parameter "domains"
    .parameter "defaultDns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2923
    .local p3, dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v5, 0x0

    .line 2924
    .local v5, last:I
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    if-eqz v7, :cond_0

    .line 2925
    new-instance p3, Ljava/util/ArrayList;

    .end local p3           #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 2926
    .restart local p3       #dnses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InetAddress;>;"
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-interface {p3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2928
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no dns provided for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " - using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/QcConnectivityService;->mDefaultDns:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 2933
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-static {p3}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, p2, v8, p4}, Landroid/os/INetworkManagementService;->setDnsServersForInterface(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2934
    if-eqz p5, :cond_1

    .line 2935
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v7, p2}, Landroid/os/INetworkManagementService;->setDefaultInterfaceForDns(Ljava/lang/String;)V

    .line 2938
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 2939
    .local v0, dns:Ljava/net/InetAddress;
    add-int/lit8 v5, v5, 0x1

    .line 2940
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net.dns"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2941
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 2942
    .local v6, value:Ljava/lang/String;
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2949
    .end local v0           #dns:Ljava/net/InetAddress;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2950
    .local v1, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception setting default dns interface: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 2952
    .end local v1           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 2944
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v2, v5, 0x1

    .local v2, i:I
    :goto_2
    :try_start_1
    iget v7, p0, Lcom/android/server/QcConnectivityService;->mNumDnsEntries:I

    if-gt v2, v7, :cond_3

    .line 2945
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net.dns"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2946
    .restart local v4       #key:Ljava/lang/String;
    const-string v7, ""

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2948
    .end local v4           #key:Ljava/lang/String;
    :cond_3
    iput v5, p0, Lcom/android/server/QcConnectivityService;->mNumDnsEntries:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateMtuSizeSettings(Landroid/net/NetworkStateTracker;)V
    .locals 6
    .parameter "nt"

    .prologue
    .line 2796
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 2797
    .local v1, iface:Ljava/lang/String;
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    .line 2799
    .local v2, mtu:I
    const/16 v3, 0x44

    if-lt v2, v3, :cond_0

    const/16 v3, 0x2710

    if-le v2, v3, :cond_1

    .line 2800
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected mtu value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 2810
    :goto_0
    return-void

    .line 2806
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v1, v2}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2807
    :catch_0
    move-exception v0

    .line 2808
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "QcConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception in setMtu()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    .locals 3
    .parameter "nt"

    .prologue
    .line 2818
    invoke-interface {p1}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v1

    .line 2819
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 2821
    .local v0, bufferSizes:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2825
    const-string v1, "net.tcp.buffersize.default"

    .line 2826
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2830
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2835
    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService;->setBufferSize(Ljava/lang/String;)V

    .line 2837
    :cond_1
    return-void

    .line 2819
    .end local v0           #bufferSizes:Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ZLcom/android/server/QcConnectivityService$RouteAttributes;Z)Z
    .locals 22
    .parameter "newLp"
    .parameter "curLp"
    .parameter "isLinkDefault"
    .parameter "ra"
    .parameter "exempt"

    .prologue
    .line 2674
    const/16 v17, 0x0

    .line 2675
    .local v17, routesToAdd:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/RouteInfo;>;"
    new-instance v4, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v4}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2676
    .local v4, dnsDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Ljava/net/InetAddress;>;"
    new-instance v15, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v15}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2677
    .local v15, routeDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/RouteInfo;>;"
    new-instance v11, Landroid/net/LinkProperties$CompareResult;

    invoke-direct {v11}, Landroid/net/LinkProperties$CompareResult;-><init>()V

    .line 2678
    .local v11, localAddrDiff:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    if-eqz p2, :cond_5

    .line 2680
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareAllRoutes(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v15

    .line 2681
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareDnses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v4

    .line 2682
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v11

    .line 2689
    :cond_0
    :goto_0
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-nez v18, :cond_1

    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_6

    :cond_1
    const/16 v16, 0x1

    .line 2691
    .local v16, routesChanged:Z
    :goto_1
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 2692
    .local v14, r:Landroid/net/RouteInfo;
    if-nez p3, :cond_3

    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-nez v18, :cond_4

    .line 2694
    :cond_3
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    .line 2696
    :cond_4
    if-nez p3, :cond_2

    .line 2698
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v14, v2}, Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_2

    .line 2683
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v14           #r:Landroid/net/RouteInfo;
    .end local v16           #routesChanged:Z
    :cond_5
    if-eqz p1, :cond_0

    .line 2684
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 2685
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    .line 2686
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    goto :goto_0

    .line 2689
    :cond_6
    const/16 v16, 0x0

    goto :goto_1

    .line 2703
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v16       #routesChanged:Z
    :cond_7
    if-eqz v16, :cond_9

    .line 2705
    if-eqz p2, :cond_8

    .line 2706
    invoke-virtual/range {p2 .. p2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 2707
    .local v13, oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/server/QcConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_3

    .line 2710
    .end local v13           #oldDns:Ljava/net/InetAddress;
    :cond_8
    if-eqz p1, :cond_b

    .line 2711
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    .line 2712
    .local v12, newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/QcConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto :goto_4

    .line 2717
    .end local v12           #newDns:Ljava/net/InetAddress;
    :cond_9
    iget-object v0, v4, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 2718
    .restart local v13       #oldDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/server/QcConnectivityService;->removeRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Z

    goto :goto_5

    .line 2720
    .end local v13           #oldDns:Ljava/net/InetAddress;
    :cond_a
    iget-object v0, v4, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/net/InetAddress;

    .line 2721
    .restart local v12       #newDns:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/QcConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    goto :goto_6

    .line 2725
    .end local v12           #newDns:Ljava/net/InetAddress;
    :cond_b
    iget-object v0, v15, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 2726
    .restart local v14       #r:Landroid/net/RouteInfo;
    if-nez p3, :cond_c

    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-nez v18, :cond_d

    .line 2727
    :cond_c
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p5

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/QcConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z

    goto :goto_7

    .line 2730
    :cond_d
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/QcConnectivityService;->addRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;ZZ)Z

    .line 2734
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 2735
    .local v9, ifaceName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mRoutesLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 2736
    :try_start_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mAddedRoutes:Ljava/util/Collection;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    if-nez v18, :cond_e

    .line 2739
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9, v14}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2745
    :cond_e
    :goto_8
    :try_start_2
    monitor-exit v19

    goto :goto_7

    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 2740
    :catch_0
    move-exception v5

    .line 2742
    .local v5, e:Ljava/lang/Exception;
    :try_start_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Exception trying to remove a route: "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    .line 2749
    .end local v5           #e:Ljava/lang/Exception;
    .end local v9           #ifaceName:Ljava/lang/String;
    .end local v14           #r:Landroid/net/RouteInfo;
    :cond_f
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_10

    .line 2750
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->removed:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkAddress;

    .line 2753
    .local v10, la:Landroid/net/LinkAddress;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getTableId()I

    move-result v20

    invoke-interface/range {v18 .. v20}, Landroid/os/INetworkManagementService;->delSrcRoute([BI)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    .line 2754
    :catch_1
    move-exception v5

    .line 2755
    .restart local v5       #e:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception while trying to remove src route: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_9

    .line 2760
    .end local v5           #e:Ljava/lang/Exception;
    .end local v10           #la:Landroid/net/LinkAddress;
    :cond_10
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->size()I

    move-result v18

    if-eqz v18, :cond_15

    .line 2761
    const/4 v6, 0x0

    .local v6, gw4Addr:Ljava/net/InetAddress;
    const/4 v7, 0x0

    .line 2762
    .local v7, gw6Addr:Ljava/net/InetAddress;
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    .line 2763
    .restart local v9       #ifaceName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 2764
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_11
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/RouteInfo;

    .line 2765
    .restart local v14       #r:Landroid/net/RouteInfo;
    invoke-virtual {v14}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 2766
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 2767
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    goto :goto_a

    .line 2769
    :cond_12
    invoke-virtual {v14}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    goto :goto_a

    .line 2771
    .end local v14           #r:Landroid/net/RouteInfo;
    :cond_13
    iget-object v0, v11, Landroid/net/LinkProperties$CompareResult;->added:Ljava/util/Collection;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/LinkAddress;

    .line 2773
    .restart local v10       #la:Landroid/net/LinkAddress;
    :try_start_5
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v18, v0

    if-eqz v18, :cond_14

    .line 2774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getTableId()I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v9, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    .line 2780
    :catch_2
    move-exception v5

    .line 2782
    .restart local v5       #e:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception while trying to add src route: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_b

    .line 2777
    .end local v5           #e:Ljava/lang/Exception;
    :cond_14
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v19

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v20

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/QcConnectivityService$RouteAttributes;->getTableId()I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-interface {v0, v9, v1, v2, v3}, Landroid/os/INetworkManagementService;->replaceSrcRoute(Ljava/lang/String;[B[BI)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_b

    .line 2788
    .end local v6           #gw4Addr:Ljava/net/InetAddress;
    .end local v7           #gw6Addr:Ljava/net/InetAddress;
    .end local v9           #ifaceName:Ljava/lang/String;
    .end local v10           #la:Landroid/net/LinkAddress;
    :cond_15
    return v16
.end method


# virtual methods
.method public captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 2448
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captivePortalCheckComplete: ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 2450
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->captivePortalCheckComplete()V

    .line 2451
    return-void
.end method

.method public captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .locals 2
    .parameter "info"
    .parameter "isCaptivePortal"

    .prologue
    .line 2456
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captivePortalCheckCompleted: ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " captive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 2458
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->captivePortalCheckCompleted(Z)V

    .line 2459
    return-void
.end method

.method public checkMobileProvisioning(I)I
    .locals 10
    .parameter "suggestedTimeOutMs"

    .prologue
    .line 5700
    const/4 v3, -0x1

    .line 5701
    .local v3, timeOutMs:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkMobileProvisioning: E suggestedTimeOutMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 5702
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5706
    .local v4, token:J
    move v3, p1

    .line 5707
    const v6, 0xea60

    if-le p1, v6, :cond_0

    .line 5708
    const v3, 0xea60

    .line 5712
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/android/server/QcConnectivityService;->isNetworkSupported(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Lcom/android/server/QcConnectivityService;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 5714
    :cond_1
    const-string v6, "checkMobileProvisioning: X no mobile network"

    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5784
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5785
    const-string v6, "checkMobileProvisioning: X"

    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 5787
    :goto_0
    return v3

    .line 5720
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mIsCheckingMobileProvisioning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5721
    const-string v6, "checkMobileProvisioning: X already checking ignore for the moment"

    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5784
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5785
    const-string v6, "checkMobileProvisioning: X"

    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5726
    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/server/QcConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 5728
    new-instance v1, Lcom/android/server/QcConnectivityService$CheckMp;

    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6, p0}, Lcom/android/server/QcConnectivityService$CheckMp;-><init>(Landroid/content/Context;Lcom/android/server/QcConnectivityService;)V

    .line 5729
    .local v1, checkMp:Lcom/android/server/QcConnectivityService$CheckMp;
    new-instance v0, Lcom/android/server/QcConnectivityService$5;

    invoke-direct {v0, p0}, Lcom/android/server/QcConnectivityService$5;-><init>(Lcom/android/server/QcConnectivityService;)V

    .line 5779
    .local v0, cb:Lcom/android/server/QcConnectivityService$CheckMp$CallBack;
    new-instance v2, Lcom/android/server/QcConnectivityService$CheckMp$Params;

    invoke-virtual {v1}, Lcom/android/server/QcConnectivityService$CheckMp;->getDefaultUrl()Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v3

    invoke-direct {v2, v6, v7, v8, v0}, Lcom/android/server/QcConnectivityService$CheckMp$Params;-><init>(Ljava/lang/String;JLcom/android/server/QcConnectivityService$CheckMp$CallBack;)V

    .line 5781
    .local v2, params:Lcom/android/server/QcConnectivityService$CheckMp$Params;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkMobileProvisioning: params="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 5782
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/server/QcConnectivityService$CheckMp$Params;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v1, v6}, Lcom/android/server/QcConnectivityService$CheckMp;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5784
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5785
    const-string v6, "checkMobileProvisioning: X"

    invoke-static {v6}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5784
    .end local v0           #cb:Lcom/android/server/QcConnectivityService$CheckMp$CallBack;
    .end local v1           #checkMp:Lcom/android/server/QcConnectivityService$CheckMp;
    .end local v2           #params:Lcom/android/server/QcConnectivityService$CheckMp$Params;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5785
    const-string v7, "checkMobileProvisioning: X"

    invoke-static {v7}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    throw v6
.end method

.method convertFeatureToNetworkType(ILjava/lang/String;)I
    .locals 3
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 5223
    move v0, p1

    .line 5225
    .local v0, usedNetworkType:I
    if-nez p1, :cond_8

    .line 5226
    const-string v1, "enableMMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5227
    const/4 v0, 0x2

    .line 5253
    :goto_0
    return v0

    .line 5228
    :cond_0
    const-string v1, "enableSUPL"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5229
    const/4 v0, 0x3

    goto :goto_0

    .line 5230
    :cond_1
    const-string v1, "enableDUN"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "enableDUNAlways"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5232
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 5233
    :cond_3
    const-string v1, "enableHIPRI"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5234
    const/4 v0, 0x5

    goto :goto_0

    .line 5235
    :cond_4
    const-string v1, "enableFOTA"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5236
    const/16 v0, 0xa

    goto :goto_0

    .line 5237
    :cond_5
    const-string v1, "enableIMS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5238
    const/16 v0, 0xb

    goto :goto_0

    .line 5239
    :cond_6
    const-string v1, "enableCBS"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5240
    const/16 v0, 0xc

    goto :goto_0

    .line 5242
    :cond_7
    const-string v1, "QcConnectivityService"

    const-string v2, "Can\'t match any mobile netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5244
    :cond_8
    const/4 v1, 0x1

    if-ne p1, v1, :cond_a

    .line 5245
    const-string v1, "p2p"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5246
    const/16 v0, 0xd

    goto :goto_0

    .line 5248
    :cond_9
    const-string v1, "QcConnectivityService"

    const-string v2, "Can\'t match any wifi netTracker!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5251
    :cond_a
    const-string v1, "QcConnectivityService"

    const-string v2, "Unexpected network type"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 3009
    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3010
    .local v10, pw:Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v13, "android.permission.DUMP"

    invoke-virtual {v12, v13}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_1

    .line 3013
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Permission Denial: can\'t dump ConnectivityService from from pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3076
    :cond_0
    :goto_0
    return-void

    .line 3020
    :cond_1
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3021
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    array-length v12, v12

    if-ge v2, v12, :cond_4

    .line 3022
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v12, v2

    .line 3023
    .local v7, nst:Landroid/net/NetworkStateTracker;
    if-eqz v7, :cond_3

    .line 3024
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkStateTracker for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3025
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3026
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3027
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Active network: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3030
    :cond_2
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3031
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3032
    invoke-virtual {v10, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3033
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3034
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3021
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3038
    .end local v7           #nst:Landroid/net/NetworkStateTracker;
    :cond_4
    const-string v12, "Network Requester Pids:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3040
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mPriorityList:[I

    .local v1, arr$:[I
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_6

    aget v6, v1, v4

    .line 3041
    .local v6, net:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3042
    .local v9, pidString:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    aget-object v12, v12, v6

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4           #i$:I
    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 3043
    .local v8, pid:Ljava/lang/Integer;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 3045
    .end local v8           #pid:Ljava/lang/Integer;
    :cond_5
    invoke-virtual {v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    add-int/lit8 v3, v4, 0x1

    .local v3, i$:I
    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_2

    .line 3047
    .end local v6           #net:I
    .end local v9           #pidString:Ljava/lang/String;
    :cond_6
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3048
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3050
    const-string v12, "FeatureUsers:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3052
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4           #i$:I
    .local v3, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/QcConnectivityService$FeatureUser;

    .line 3053
    .local v11, requester:Lcom/android/server/QcConnectivityService$FeatureUser;
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 3055
    .end local v11           #requester:Lcom/android/server/QcConnectivityService$FeatureUser;
    :cond_7
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3056
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 3058
    monitor-enter p0

    .line 3059
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NetworkTranstionWakeLock is currently "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v12}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_8

    const-string v12, ""

    :goto_5
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "held."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3061
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "It was last requested for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3063
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3065
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v0, p3

    invoke-virtual {v12, p1, v10, v0}, Lcom/android/server/connectivity/Tethering;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3067
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mInetLog:Ljava/util/ArrayList;

    if-eqz v12, :cond_0

    .line 3068
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3069
    const-string v12, "Inet condition reports:"

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 3071
    const/4 v2, 0x0

    :goto_6
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_9

    .line 3072
    iget-object v12, p0, Lcom/android/server/QcConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3071
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3059
    :cond_8
    :try_start_1
    const-string v12, "not "

    goto :goto_5

    .line 3062
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 3074
    :cond_9
    invoke-virtual {v10}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto/16 :goto_0
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "config"

    .prologue
    .line 5335
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->throwIfLockdownEnabled()V

    .line 5336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5337
    .local v0, user:I
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5338
    :try_start_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 5339
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findConnectionTypeForIface(Ljava/lang/String;)I
    .locals 7
    .parameter "iface"

    .prologue
    const/4 v5, -0x1

    .line 5596
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5598
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5607
    :cond_0
    :goto_0
    return v5

    .line 5599
    :cond_1
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 5600
    .local v4, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_2

    .line 5601
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 5602
    .local v3, lp:Landroid/net/LinkProperties;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5603
    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    goto :goto_0

    .line 5599
    .end local v3           #lp:Landroid/net/LinkProperties;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 1

    .prologue
    .line 1157
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    invoke-virtual {p0, v0}, Lcom/android/server/QcConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 2

    .prologue
    .line 6484
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 6485
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6486
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v1, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v0

    .line 6488
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 1046
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1047
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1048
    .local v0, uid:I
    iget v1, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "uid"

    .prologue
    .line 1104
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1105
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 1092
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1093
    iget v1, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    iget v2, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    aget-object v0, v1, v2

    .line 1095
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1096
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1099
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 4

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1206
    .local v1, token:J
    :try_start_0
    iget v3, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v3}, Lcom/android/server/QcConnectivityService;->getNetworkStateUnchecked(I)Landroid/net/NetworkState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1207
    .local v0, state:Landroid/net/NetworkState;
    if-eqz v0, :cond_0

    .line 1209
    :try_start_1
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    invoke-interface {v3, v0}, Landroid/net/INetworkPolicyManager;->getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1215
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v3

    .line 1210
    :catch_0
    move-exception v3

    .line 1213
    :cond_0
    const/4 v3, 0x0

    .line 1215
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0           #state:Landroid/net/NetworkState;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
    .locals 7

    .prologue
    .line 6494
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 6495
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 6496
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/LinkQualityInfo;>;"
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 6497
    .local v5, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_0

    .line 6498
    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v3

    .line 6499
    .local v3, li:Landroid/net/LinkQualityInfo;
    if-eqz v3, :cond_0

    .line 6500
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6496
    .end local v3           #li:Landroid/net/LinkQualityInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6505
    .end local v5           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/LinkQualityInfo;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/LinkQualityInfo;

    return-object v6
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 8

    .prologue
    .line 1128
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1129
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1130
    .local v5, uid:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1131
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1132
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 1133
    .local v4, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    .line 1134
    invoke-direct {p0, v4, v5}, Lcom/android/server/QcConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1137
    .end local v4           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/net/NetworkInfo;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/net/NetworkInfo;

    return-object v6

    .line 1137
    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .locals 11

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1175
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1176
    .local v6, uid:I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1177
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    iget-object v8, p0, Lcom/android/server/QcConnectivityService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1178
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 1179
    .local v5, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v5, :cond_0

    .line 1180
    invoke-direct {p0, v5, v6}, Lcom/android/server/QcConnectivityService;->getFilteredNetworkInfo(Landroid/net/NetworkStateTracker;I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1181
    .local v2, info:Landroid/net/NetworkInfo;
    new-instance v7, Landroid/net/NetworkState;

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v9

    invoke-interface {v5}, Landroid/net/NetworkStateTracker;->getLinkCapabilities()Landroid/net/LinkCapabilities;

    move-result-object v10

    invoke-direct {v7, v2, v9, v10}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/LinkCapabilities;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1185
    .end local v5           #tracker:Landroid/net/NetworkStateTracker;
    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/NetworkState;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/NetworkState;

    return-object v7

    .line 1185
    .end local v0           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 5120
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    monitor-exit v1

    return-object v0

    .line 5122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 4847
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceTetherAccessPermission()V

    .line 4849
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4850
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->getLastTetherError(Ljava/lang/String;)I

    move-result v0

    .line 4852
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
    .locals 3

    .prologue
    .line 5367
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->throwIfLockdownEnabled()V

    .line 5368
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5369
    .local v0, user:I
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5370
    :try_start_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 5371
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1163
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v1, p1

    .line 1165
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    .line 1166
    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 1169
    .end local v0           #tracker:Landroid/net/NetworkStateTracker;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
    .locals 1
    .parameter "networkType"

    .prologue
    .line 6474
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 6475
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6476
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0}, Landroid/net/NetworkStateTracker;->getLinkQualityInfo()Landroid/net/LinkQualityInfo;

    move-result-object v0

    .line 6478
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1827
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1828
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1831
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 1828
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 6388
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 6389
    invoke-direct {p0, v5}, Lcom/android/server/QcConnectivityService;->getProvisioningUrlBaseFromFile(I)Ljava/lang/String;

    move-result-object v1

    .line 6390
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6391
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 6397
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6398
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 6399
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6400
    const-string v0, "0000000000"

    .line 6402
    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6408
    .end local v0           #phoneNumber:Ljava/lang/String;
    :cond_1
    return-object v1

    .line 6394
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMobileRedirectedProvisioningUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6378
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 6379
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/QcConnectivityService;->getProvisioningUrlBaseFromFile(I)Ljava/lang/String;

    move-result-object v0

    .line 6380
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6381
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6383
    :cond_0
    return-object v0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 1110
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1112
    .local v0, uid:I
    invoke-direct {p0, p1, v0}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 911
    monitor-enter p0

    .line 912
    :try_start_0
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mNetworkPreference:I

    .line 913
    .local v0, preference:I
    monitor-exit p0

    .line 914
    return v0

    .line 913
    .end local v0           #preference:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 4

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1081
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->getProvisioningNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1082
    .local v0, provNi:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 1083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1084
    .local v1, uid:I
    iget v2, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v2, v1}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(II)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1086
    .end local v1           #uid:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProvisioningOrActiveNetworkInfo: X provNi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 1087
    return-object v0
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 3

    .prologue
    .line 5043
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5044
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 5045
    .local v0, ret:Landroid/net/ProxyProperties;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/QcConnectivityService;->mDefaultProxyDisabled:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 5046
    :cond_0
    monitor-exit v2

    return-object v0

    .line 5047
    .end local v0           #ret:Landroid/net/ProxyProperties;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4879
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceTetherAccessPermission()V

    .line 4880
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4881
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 4883
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4901
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceTetherAccessPermission()V

    .line 4902
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4859
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceTetherAccessPermission()V

    .line 4860
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4861
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 4863
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4869
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceTetherAccessPermission()V

    .line 4870
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4871
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 4873
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4907
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceTetherAccessPermission()V

    .line 4908
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4913
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceTetherAccessPermission()V

    .line 4914
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Tethering;->getErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVpnConfig()Lcom/android/internal/net/VpnConfig;
    .locals 3

    .prologue
    .line 5382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5383
    .local v0, user:I
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5384
    :try_start_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 5385
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isActiveNetworkMetered()Z
    .locals 3

    .prologue
    .line 1221
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1222
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1224
    .local v0, token:J
    :try_start_0
    iget v2, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    invoke-direct {p0, v2}, Lcom/android/server/QcConnectivityService;->isNetworkMeteredUnchecked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceAccessPermission()V

    .line 1144
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4922
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceTetherAccessPermission()V

    .line 4923
    const-string v4, "ro.tether.denied"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 4924
    .local v0, defaultVal:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tether_supported"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    .line 4926
    .local v1, tetherEnabledInSettings:Z
    :goto_1
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_3

    :cond_0
    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering;->getUpstreamIfaceTypes()[I

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_3

    :goto_2
    return v3

    .end local v0           #defaultVal:I
    .end local v1           #tetherEnabledInSettings:Z
    :cond_1
    move v0, v3

    .line 4923
    goto :goto_0

    .restart local v0       #defaultVal:I
    :cond_2
    move v1, v2

    .line 4924
    goto :goto_1

    .restart local v1       #tetherEnabledInSettings:Z
    :cond_3
    move v3, v2

    .line 4926
    goto :goto_2
.end method

.method public markSocketAsUser(Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .parameter "socket"
    .parameter "uid"

    .prologue
    .line 5311
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceMarkNetworkSocketPermission()V

    .line 5312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5314
    .local v1, token:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    invoke-interface {v3, p2}, Landroid/os/INetworkManagementService;->getMarkForUid(I)I

    move-result v0

    .line 5316
    .local v0, mark:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 5317
    const/4 v0, 0x0

    .line 5319
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3, v0}, Landroid/net/NetworkUtils;->markSocket(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5322
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5324
    .end local v0           #mark:I
    :goto_0
    return-void

    .line 5320
    :catch_0
    move-exception v3

    .line 5322
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "oldPackage"
    .parameter "newPackage"

    .prologue
    .line 5302
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->throwIfLockdownEnabled()V

    .line 5303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5304
    .local v0, user:I
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5305
    :try_start_0
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 5306
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public protectVpn(Landroid/os/ParcelFileDescriptor;)Z
    .locals 5
    .parameter "socket"

    .prologue
    .line 5271
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->throwIfLockdownEnabled()V

    .line 5273
    :try_start_0
    iget v0, p0, Lcom/android/server/QcConnectivityService;->mActiveDefaultNetwork:I

    .line 5274
    .local v0, type:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5275
    .local v1, user:I
    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 5276
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5277
    :try_start_1
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v4, v4, v0

    invoke-interface {v4}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/android/server/connectivity/Vpn;->protect(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 5279
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5280
    const/4 v2, 0x1

    .line 5286
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5291
    .end local v0           #type:I
    .end local v1           #user:I
    :goto_0
    return v2

    .line 5279
    .restart local v0       #type:I
    .restart local v1       #user:I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 5282
    .end local v0           #type:I
    .end local v1           #user:I
    :catch_0
    move-exception v2

    .line 5286
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 5291
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 5286
    .restart local v0       #type:I
    .restart local v1       #user:I
    :cond_0
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 5287
    :catch_1
    move-exception v2

    goto :goto_1

    .line 5285
    .end local v0           #type:I
    .end local v1           #user:I
    :catchall_1
    move-exception v2

    .line 5286
    :try_start_7
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 5289
    :goto_2
    throw v2

    .line 5287
    .restart local v0       #type:I
    .restart local v1       #user:I
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v0           #type:I
    .end local v1           #user:I
    :catch_3
    move-exception v2

    goto :goto_1

    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method public reportInetCondition(II)V
    .locals 6
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    .line 4949
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.STATUS_BAR"

    const-string v5, "ConnectivityService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4954
    invoke-static {}, Lcom/android/server/QcConnectivityService;->getCallingPid()I

    move-result v0

    .line 4955
    .local v0, pid:I
    invoke-static {}, Lcom/android/server/QcConnectivityService;->getCallingUid()I

    move-result v2

    .line 4956
    .local v2, uid:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reports inet is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x32

    if-le p2, v3, :cond_0

    const-string v3, "connected"

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "network Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4959
    .local v1, s:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4960
    :goto_1
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mInetLog:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_1

    .line 4961
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mInetLog:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 4956
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    const-string v3, "disconnected"

    goto :goto_0

    .line 4964
    .restart local v1       #s:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4966
    return-void
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)V
    .locals 3
    .parameter "forWhom"

    .prologue
    .line 4936
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 4937
    monitor-enter p0

    .line 4938
    :try_start_0
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1392

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4941
    monitor-exit p0

    .line 4942
    return-void

    .line 4941
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestRouteToHost(II)Z
    .locals 2
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 1631
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 1633
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 1634
    const/4 v1, 0x0

    .line 1637
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/QcConnectivityService;->requestRouteToHostAddress(I[B)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHostAddress(I[B)Z
    .locals 11
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    const/4 v8, 0x0

    .line 1651
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceChangePermission()V

    .line 1652
    iget-object v9, p0, Lcom/android/server/QcConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1653
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1656
    :cond_0
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1657
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    move v4, v8

    .line 1685
    :goto_0
    return v4

    .line 1660
    :cond_1
    iget-object v9, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v7, v9, p1

    .line 1661
    .local v7, tracker:Landroid/net/NetworkStateTracker;
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 1663
    .local v3, netState:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v7, :cond_3

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v9, :cond_2

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v9, :cond_3

    :cond_2
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move v4, v8

    .line 1670
    goto :goto_0

    .line 1672
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1674
    .local v5, token:J
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 1675
    .local v0, addr:Ljava/net/InetAddress;
    invoke-interface {v7}, Landroid/net/NetworkStateTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1676
    .local v2, lp:Landroid/net/LinkProperties;
    const/4 v9, 0x1

    invoke-direct {p0, v2, v0, v9}, Lcom/android/server/QcConnectivityService;->addRouteToAddress(Landroid/net/LinkProperties;Ljava/net/InetAddress;Z)Z

    move-result v4

    .line 1677
    .local v4, ok:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestRouteToHostAddress ok="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1679
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #lp:Landroid/net/LinkProperties;
    .end local v4           #ok:Z
    :catch_0
    move-exception v1

    .line 1680
    .local v1, e:Ljava/net/UnknownHostException;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestRouteToHostAddress got "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1682
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1684
    const-string v9, "requestRouteToHostAddress X bottom return false"

    invoke-static {v9}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    move v4, v8

    .line 1685
    goto :goto_0

    .line 1682
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v8

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2150
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 2151
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/QcConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2152
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/QcConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2153
    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 6420
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 6421
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6423
    .local v1, ident:J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6424
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6425
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6426
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "state"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6427
    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6429
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6431
    return-void

    .line 6424
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 6429
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method setAlarm(ILandroid/app/PendingIntent;)V
    .locals 6
    .parameter "timeoutInMilliseconds"
    .parameter "intent"

    .prologue
    .line 6555
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 6558
    .local v0, wakeupTime:J
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 6559
    return-void
.end method

.method public setDataDependency(IZ)V
    .locals 4
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 1836
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1838
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1840
    return-void

    .line 1838
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 9
    .parameter "proxyProperties"

    .prologue
    .line 5052
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5054
    iget-object v8, p0, Lcom/android/server/QcConnectivityService;->mProxyLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5055
    :try_start_0
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-ne p1, v7, :cond_0

    monitor-exit v8

    .line 5092
    :goto_0
    return-void

    .line 5056
    :cond_0
    if-eqz p1, :cond_1

    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {p1, v7}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    monitor-exit v8

    goto :goto_0

    .line 5086
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 5057
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7, p1}, Landroid/net/ProxyProperties;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    monitor-exit v8

    goto :goto_0

    .line 5059
    :cond_2
    const-string v1, ""

    .line 5060
    .local v1, host:Ljava/lang/String;
    const/4 v3, 0x0

    .line 5061
    .local v3, port:I
    const-string v0, ""

    .line 5062
    .local v0, exclList:Ljava/lang/String;
    const-string v2, ""

    .line 5063
    .local v2, pacFileUrl:Ljava/lang/String;
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 5065
    :cond_3
    new-instance v7, Landroid/net/ProxyProperties;

    invoke-direct {v7, p1}, Landroid/net/ProxyProperties;-><init>(Landroid/net/ProxyProperties;)V

    iput-object v7, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    .line 5066
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 5067
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    .line 5068
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    invoke-virtual {v7}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 5069
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 5070
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    .line 5075
    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5076
    .local v4, res:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    .line 5078
    .local v5, token:J
    :try_start_2
    const-string v7, "global_http_proxy_host"

    invoke-static {v4, v7, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5079
    const-string v7, "global_http_proxy_port"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5080
    const-string v7, "global_http_proxy_exclusion_list"

    invoke-static {v4, v7, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5082
    const-string v7, "global_proxy_pac_url"

    invoke-static {v4, v7, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5084
    :try_start_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5086
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5088
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    if-nez v7, :cond_5

    .line 5089
    iget-object p1, p0, Lcom/android/server/QcConnectivityService;->mDefaultProxy:Landroid/net/ProxyProperties;

    .line 5091
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/QcConnectivityService;->sendProxyBroadcast(Landroid/net/ProxyProperties;)V

    goto/16 :goto_0

    .line 5073
    .end local v4           #res:Landroid/content/ContentResolver;
    .end local v5           #token:J
    :cond_6
    const/4 v7, 0x0

    :try_start_4
    iput-object v7, p0, Lcom/android/server/QcConnectivityService;->mGlobalProxy:Landroid/net/ProxyProperties;

    goto :goto_1

    .line 5084
    .restart local v4       #res:Landroid/content/ContentResolver;
    .restart local v5       #token:J
    :catchall_1
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setMobileDataEnabled(Ljava/lang/String;Z)V
    .locals 7
    .parameter "callingPackage"
    .parameter "enabled"

    .prologue
    const/4 v3, 0x0

    .line 1912
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceChangePermission()V

    .line 1913
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMobileDataEnabled("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 1915
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1916
    .local v0, appOps:Landroid/app/AppOpsManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1917
    .local v1, callingUid:I
    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1923
    :goto_0
    return-void

    .line 1921
    :cond_0
    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x6b

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setNetworkPreference(I)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceChangePermission()V

    .line 903
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 905
    return-void
.end method

.method public setPolicyDataEnable(IZ)V
    .locals 4
    .parameter "networkType"
    .parameter "enabled"

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "QcConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x70

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1947
    return-void

    .line 1945
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "visible"
    .parameter "networkType"
    .parameter "extraInfo"
    .parameter "url"

    .prologue
    .line 6414
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 6415
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/QcConnectivityService;->setProvNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V

    .line 6416
    return-void
.end method

.method public setRadio(IZ)Z
    .locals 3
    .parameter "netType"
    .parameter "turnOn"

    .prologue
    const/4 v1, 0x0

    .line 1253
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceChangePermission()V

    .line 1254
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return v1

    .line 1257
    :cond_1
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v2, p1

    .line 1258
    .local v0, tracker:Landroid/net/NetworkStateTracker;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 6
    .parameter "turnOn"

    .prologue
    .line 1243
    const/4 v3, 0x1

    .line 1244
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceChangePermission()V

    .line 1245
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    .local v0, arr$:[Landroid/net/NetworkStateTracker;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 1246
    .local v4, t:Landroid/net/NetworkStateTracker;
    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Landroid/net/NetworkStateTracker;->setRadio(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1245
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1246
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1248
    .end local v4           #t:Landroid/net/NetworkStateTracker;
    :cond_2
    return v3
.end method

.method public setUsbTethering(Z)I
    .locals 1
    .parameter "enable"

    .prologue
    .line 4889
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceTetherChangePermission()V

    .line 4890
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4891
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    .line 4893
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public startCne()V
    .locals 7

    .prologue
    .line 5612
    :try_start_0
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/com.quicinc.cne.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 5615
    .local v1, cneClassLoader:Ldalvik/system/PathClassLoader;
    const-string v4, "com.quicinc.cne.CNE"

    invoke-virtual {v1, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 5616
    .local v0, cneClass:Ljava/lang/Class;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/Handler;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 5618
    .local v2, cneConstructor:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/QcConnectivityService;->cneObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5624
    .end local v0           #cneClass:Ljava/lang/Class;
    .end local v1           #cneClassLoader:Ldalvik/system/PathClassLoader;
    .end local v2           #cneConstructor:Ljava/lang/reflect/Constructor;
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->cneObj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->cneObj:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/IBinder;

    if-eqz v4, :cond_0

    .line 5625
    const-string v5, "cneservice"

    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->cneObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5626
    const-string v4, "Created CNE Service"

    invoke-direct {p0, v4}, Lcom/android/server/QcConnectivityService;->logw(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5631
    :cond_0
    :goto_1
    return-void

    .line 5619
    :catch_0
    move-exception v3

    .line 5620
    .local v3, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/QcConnectivityService;->cneObj:Ljava/lang/Object;

    .line 5621
    const-string v4, "Failed to create CNE Service"

    invoke-static {v4, v3}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 5628
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 5629
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v4, "Failed to create CNE Service"

    invoke-static {v4, v3}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .parameter "profile"

    .prologue
    .line 5348
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->throwIfLockdownEnabled()V

    .line 5349
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 5350
    .local v0, egress:Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    .line 5351
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing active network connection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5353
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5354
    .local v1, user:I
    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 5355
    :try_start_0
    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iget-object v4, p0, Lcom/android/server/QcConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1, v4, v0}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V

    .line 5356
    monitor-exit v3

    .line 5357
    return-void

    .line 5356
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    .locals 25
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"

    .prologue
    .line 1344
    const-wide/16 v14, 0x0

    .line 1346
    .local v14, startTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1352
    invoke-direct/range {p0 .. p0}, Lcom/android/server/QcConnectivityService;->enforceChangePermission()V

    .line 1354
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    move-object/from16 v21, v0

    aget-object v21, v21, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v21, :cond_2

    .line 1356
    :cond_0
    const/16 v21, 0x3

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1480
    .local v6, execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 1485
    :cond_1
    :goto_0
    return v21

    .line 1359
    .end local v6           #execTime:J
    :cond_2
    :try_start_1
    new-instance v8, Lcom/android/server/QcConnectivityService$FeatureUser;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/android/server/QcConnectivityService$FeatureUser;-><init>(Lcom/android/server/QcConnectivityService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1362
    .local v8, f:Lcom/android/server/QcConnectivityService$FeatureUser;
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/QcConnectivityService;->convertFeatureToNetworkType(ILjava/lang/String;)I

    move-result v20

    .line 1364
    .local v20, usedNetworkType:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/QcConnectivityService;->mLockdownEnabled:Z

    move/from16 v21, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v21, :cond_3

    .line 1367
    const/16 v21, 0x2

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1480
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1370
    .end local v6           #execTime:J
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mProtectedNetworks:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1371
    invoke-direct/range {p0 .. p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 1375
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService;->isNetworkMeteredUnchecked(I)Z

    move-result v11

    .line 1377
    .local v11, networkMetered:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1378
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v19

    .line 1379
    .local v19, uidRules:I
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1380
    if-eqz v11, :cond_6

    and-int/lit8 v21, v19, 0x1

    if-eqz v21, :cond_6

    .line 1381
    const/16 v21, 0x3

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1480
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1379
    .end local v6           #execTime:J
    .end local v19           #uidRules:I
    :catchall_0
    move-exception v21

    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1478
    .end local v8           #f:Lcom/android/server/QcConnectivityService$FeatureUser;
    .end local v11           #networkMetered:Z
    .end local v20           #usedNetworkType:I
    :catchall_1
    move-exception v21

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1480
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_5

    .line 1481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    .line 1485
    :cond_5
    throw v21

    .line 1384
    .end local v6           #execTime:J
    .restart local v8       #f:Lcom/android/server/QcConnectivityService$FeatureUser;
    .restart local v11       #networkMetered:Z
    .restart local v19       #uidRules:I
    .restart local v20       #usedNetworkType:I
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    move-object/from16 v21, v0

    aget-object v10, v21, v20

    .line 1385
    .local v10, network:Landroid/net/NetworkStateTracker;
    if-eqz v10, :cond_13

    .line 1386
    new-instance v5, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/QcConnectivityService;->getCallingPid()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1387
    .local v5, currentPid:Ljava/lang/Integer;
    move/from16 v0, v20

    move/from16 v1, p1

    if-eq v0, v1, :cond_11

    .line 1388
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v12

    .line 1390
    .local v12, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v21

    if-nez v21, :cond_8

    .line 1391
    const-string v21, "enableDUNAlways"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 1392
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "special network not available ni="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1393
    const/16 v21, 0x2

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1480
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1397
    .end local v6           #execTime:J
    :cond_7
    :try_start_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "special network not available, but try anyway ni="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 1403
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService;->getRestoreDefaultNetworkDelay(I)I

    move-result v13

    .line 1405
    .local v13, restoreTimer:I
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1406
    const/4 v4, 0x1

    .line 1407
    .local v4, addToList:Z
    if-gez v13, :cond_a

    .line 1410
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/QcConnectivityService$FeatureUser;

    .line 1411
    .local v18, u:Lcom/android/server/QcConnectivityService$FeatureUser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/server/QcConnectivityService$FeatureUser;->isSameUser(Lcom/android/server/QcConnectivityService$FeatureUser;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1413
    const/4 v4, 0x0

    .line 1419
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v18           #u:Lcom/android/server/QcConnectivityService$FeatureUser;
    :cond_a
    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1420
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1424
    :cond_c
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1426
    if-ltz v13, :cond_d

    .line 1427
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x65

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    int-to-long v0, v13

    move-wide/from16 v23, v0

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1431
    :cond_d
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->isTeardownRequested()Z

    move-result v21

    if-nez v21, :cond_f

    .line 1433
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 1434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-wide v16

    .line 1437
    .local v16, token:J
    :try_start_a
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService;->handleDnsConfigurationChange(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1440
    :try_start_b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1442
    const/16 v21, 0x0

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1480
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1424
    .end local v6           #execTime:J
    .end local v16           #token:J
    :catchall_2
    move-exception v21

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v21

    .line 1440
    .restart local v16       #token:J
    :catchall_3
    move-exception v21

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v21
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1445
    .end local v16           #token:J
    :cond_e
    const/16 v21, 0x1

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1480
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1452
    .end local v6           #execTime:J
    :cond_f
    :try_start_e
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "startUsingNetworkFeature reconnecting to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V

    .line 1455
    invoke-interface {v10}, Landroid/net/NetworkStateTracker;->reconnect()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 1456
    const-string v21, "startUsingNetworkFeature X: return APN_REQUEST_STARTED"

    invoke-static/range {v21 .. v21}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1457
    const/16 v21, 0x1

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1480
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1459
    .end local v6           #execTime:J
    :cond_10
    :try_start_f
    const-string v21, "startUsingNetworkFeature X: return APN_REQUEST_FAILED"

    invoke-static/range {v21 .. v21}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1460
    const/16 v21, 0x3

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1480
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1464
    .end local v4           #addToList:Z
    .end local v6           #execTime:J
    .end local v12           #ni:Landroid/net/NetworkInfo;
    .end local v13           #restoreTimer:I
    :cond_11
    :try_start_10
    monitor-enter p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 1465
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mFeatureUsers:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService;->mNetRequestersPids:[Ljava/util/List;

    move-object/from16 v21, v0

    aget-object v21, v21, v20

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    :cond_12
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 1471
    :try_start_12
    const-string v21, "startUsingNetworkFeature X: return -1 unsupported feature."

    invoke-static/range {v21 .. v21}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1472
    const/16 v21, -0x1

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1480
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1470
    .end local v6           #execTime:J
    :catchall_4
    move-exception v21

    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw v21

    .line 1475
    .end local v5           #currentPid:Ljava/lang/Integer;
    :cond_13
    const-string v21, "startUsingNetworkFeature X: return APN_TYPE_NOT_AVAILABLE"

    invoke-static/range {v21 .. v21}, Lcom/android/server/QcConnectivityService;->log(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1476
    const/16 v21, 0x2

    .line 1479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v6, v22, v14

    .line 1480
    .restart local v6       #execTime:J
    const-wide/16 v22, 0xfa

    cmp-long v22, v6, v22

    if-lez v22, :cond_1

    .line 1481
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "startUsingNetworkFeature took too long: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/QcConnectivityService;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 8
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v6, 0x1

    .line 1492
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceChangePermission()V

    .line 1494
    invoke-static {}, Lcom/android/server/QcConnectivityService;->getCallingPid()I

    move-result v2

    .line 1495
    .local v2, pid:I
    invoke-static {}, Lcom/android/server/QcConnectivityService;->getCallingUid()I

    move-result v4

    .line 1497
    .local v4, uid:I
    const/4 v3, 0x0

    .line 1498
    .local v3, u:Lcom/android/server/QcConnectivityService$FeatureUser;
    const/4 v0, 0x0

    .line 1500
    .local v0, found:Z
    monitor-enter p0

    .line 1501
    :try_start_0
    iget-object v7, p0, Lcom/android/server/QcConnectivityService;->mFeatureUsers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/QcConnectivityService$FeatureUser;

    .line 1502
    .local v5, x:Lcom/android/server/QcConnectivityService$FeatureUser;
    invoke-virtual {v5, v2, v4, p1, p2}, Lcom/android/server/QcConnectivityService$FeatureUser;->isSameUser(IIILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1503
    move-object v3, v5

    .line 1504
    const/4 v0, 0x1

    .line 1508
    .end local v5           #x:Lcom/android/server/QcConnectivityService$FeatureUser;
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1509
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 1512
    invoke-direct {p0, v3, v6}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(Lcom/android/server/QcConnectivityService$FeatureUser;Z)I

    move-result v6

    .line 1516
    :cond_2
    return v6

    .line 1508
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public supplyMessenger(ILandroid/os/Messenger;)V
    .locals 1
    .parameter "networkType"
    .parameter "messenger"

    .prologue
    .line 5587
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceConnectivityInternalPermission()V

    .line 5589
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 5590
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;

    aget-object v0, v0, p1

    invoke-interface {v0, p2}, Landroid/net/NetworkStateTracker;->supplyMessenger(Landroid/os/Messenger;)V

    .line 5592
    :cond_0
    return-void
.end method

.method systemReady()V
    .locals 4

    .prologue
    .line 2303
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Landroid/net/CaptivePortalTracker;->makeCaptivePortalTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/CaptivePortalTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/QcConnectivityService;->mCaptivePortalTracker:Landroid/net/CaptivePortalTracker;

    .line 2304
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->loadGlobalProxy()V

    .line 2306
    monitor-enter p0

    .line 2307
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/QcConnectivityService;->mSystemReady:Z

    .line 2308
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 2309
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2310
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/QcConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2312
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2314
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2318
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService;->updateLockdownVpn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2319
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2320
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2322
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 2312
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 4819
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceTetherChangePermission()V

    .line 4821
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4822
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v0

    .line 4824
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 1
    .parameter "iface"

    .prologue
    .line 4835
    invoke-direct {p0}, Lcom/android/server/QcConnectivityService;->enforceTetherChangePermission()V

    .line 4837
    invoke-virtual {p0}, Lcom/android/server/QcConnectivityService;->isTetheringSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4838
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    .line 4840
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public updateLockdownVpn()Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 5525
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 5526
    const-string v1, "QcConnectivityService"

    const-string v2, "Lockdown VPN only available to AID_SYSTEM"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5550
    :goto_0
    return v0

    .line 5531
    :cond_0
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/QcConnectivityService;->mLockdownEnabled:Z

    .line 5532
    iget-boolean v1, p0, Lcom/android/server/QcConnectivityService;->mLockdownEnabled:Z

    if-eqz v1, :cond_2

    .line 5533
    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5534
    const-string v1, "QcConnectivityService"

    const-string v2, "KeyStore locked; unable to create LockdownTracker"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5538
    :cond_1
    new-instance v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 5539
    .local v6, profileName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/QcConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 5541
    .local v5, profile:Lcom/android/internal/net/VpnProfile;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 5542
    .local v7, user:I
    iget-object v8, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v8

    .line 5543
    :try_start_0
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v1, p0, Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/QcConnectivityService;->mNetd:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Lcom/android/server/QcConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 5545
    monitor-exit v8

    .line 5550
    .end local v5           #profile:Lcom/android/internal/net/VpnProfile;
    .end local v6           #profileName:Ljava/lang/String;
    .end local v7           #user:I
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5545
    .restart local v5       #profile:Lcom/android/internal/net/VpnProfile;
    .restart local v6       #profileName:Ljava/lang/String;
    .restart local v7       #user:I
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5547
    .end local v5           #profile:Lcom/android/internal/net/VpnProfile;
    .end local v6           #profileName:Ljava/lang/String;
    .end local v7           #user:I
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    goto :goto_1
.end method
