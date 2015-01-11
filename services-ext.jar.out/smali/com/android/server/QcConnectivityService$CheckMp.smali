.class Lcom/android/server/QcConnectivityService$CheckMp;
.super Landroid/os/AsyncTask;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckMp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/QcConnectivityService$CheckMp$CallBack;,
        Lcom/android/server/QcConnectivityService$CheckMp$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/QcConnectivityService$CheckMp$Params;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECKMP_TAG:Ljava/lang/String; = "CheckMp"

.field public static final MAX_TIMEOUT_MS:I = 0xea60

.field private static final SOCKET_TIMEOUT_MS:I = 0x1388


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCs:Lcom/android/server/QcConnectivityService;

.field private mParams:Lcom/android/server/QcConnectivityService$CheckMp$Params;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/QcConnectivityService;)V
    .locals 2
    .parameter "context"
    .parameter "cs"

    .prologue
    .line 5829
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5830
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    .line 5831
    iput-object p2, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    .line 5834
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    .line 5836
    return-void
.end method

.method private inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 7
    .parameter "addresses"

    .prologue
    .line 6121
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 6122
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 6123
    .local v2, firstTime:Z
    move-object v1, p1

    .local v1, arr$:[Ljava/net/InetAddress;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 6124
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz v2, :cond_0

    .line 6125
    const/4 v2, 0x0

    .line 6129
    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 6123
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6127
    :cond_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 6131
    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private declared-synchronized isMobileOk(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .locals 39
    .parameter "params"

    .prologue
    .line 5857
    monitor-enter p0

    const/16 v34, 0x0

    :try_start_0
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 5858
    .local v29, result:Ljava/lang/Integer;
    #getter for: Lcom/android/server/QcConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/QcConnectivityService$CheckMp$Params;->access$20100(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 5859
    .local v26, orgUri:Landroid/net/Uri;
    new-instance v27, Ljava/util/Random;

    invoke-direct/range {v27 .. v27}, Ljava/util/Random;-><init>()V

    .line 5860
    .local v27, rand:Ljava/util/Random;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/QcConnectivityService$CheckMp;->mParams:Lcom/android/server/QcConnectivityService$CheckMp$Params;

    .line 5862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->isNetworkSupported(I)Z

    move-result v34

    if-nez v34, :cond_0

    .line 5863
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 5864
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X not mobile capable result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v34, v29

    .line 6104
    :goto_0
    monitor-exit p0

    return-object v34

    .line 5870
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v23, v34, v35

    check-cast v23, Landroid/net/MobileDataStateTracker;

    .line 5872
    .local v23, mdstDefault:Landroid/net/MobileDataStateTracker;
    invoke-virtual/range {v23 .. v23}, Landroid/net/MobileDataStateTracker;->isProvisioningNetwork()Z

    move-result v16

    .line 5873
    .local v16, isDefaultProvisioning:Z
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: isDefaultProvisioning="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v34

    const/16 v35, 0x5

    aget-object v24, v34, v35

    check-cast v24, Landroid/net/MobileDataStateTracker;

    .line 5877
    .local v24, mdstHipri:Landroid/net/MobileDataStateTracker;
    invoke-virtual/range {v24 .. v24}, Landroid/net/MobileDataStateTracker;->isProvisioningNetwork()Z

    move-result v17

    .line 5878
    .local v17, isHipriProvisioning:Z
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: isHipriProvisioning="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5880
    if-nez v16, :cond_1

    if-eqz v17, :cond_2

    .line 5881
    :cond_1
    const/16 v34, 0x5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 5882
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X default || hipri is provisioning result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v34, v29

    .line 5883
    goto/16 :goto_0

    .line 5888
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    #getter for: Lcom/android/server/QcConnectivityService$CheckMp$Params;->mTimeOutMs:J
    invoke-static/range {p1 .. p1}, Lcom/android/server/QcConnectivityService$CheckMp$Params;->access$20200(Lcom/android/server/QcConnectivityService$CheckMp$Params;)J

    move-result-wide v36

    add-long v11, v34, v36

    .line 5890
    .local v11, endTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    #calls: Lcom/android/server/QcConnectivityService;->isMobileDataStateTrackerReady()Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService;->access$20300(Lcom/android/server/QcConnectivityService;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 5892
    const-string v34, "isMobileOk: mdst is not ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5893
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_3

    .line 5894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    #calls: Lcom/android/server/QcConnectivityService;->isMobileDataStateTrackerReady()Z
    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService;->access$20300(Lcom/android/server/QcConnectivityService;)Z

    move-result v34

    if-eqz v34, :cond_6

    .line 5897
    const-string v34, "isMobileOk: mdst ready, enable fail fast of mobile data"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->access$20400(Lcom/android/server/QcConnectivityService;I)V

    .line 5905
    :cond_3
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: start hipri url="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    #getter for: Lcom/android/server/QcConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/QcConnectivityService$CheckMp$Params;->access$20100(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5908
    new-instance v9, Landroid/os/Binder;

    invoke-direct {v9}, Landroid/os/Binder;-><init>()V

    .line 5909
    .local v9, binder:Landroid/os/Binder;
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_5

    .line 5910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    move-object/from16 v0, v34

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/QcConnectivityService;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I

    move-result v30

    .line 5912
    .local v30, ret:I
    if-eqz v30, :cond_4

    const/16 v34, 0x1

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_8

    .line 5914
    :cond_4
    const-string v34, "isMobileOk: hipri started"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5923
    .end local v30           #ret:I
    :cond_5
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_1f

    .line 5928
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    .line 5930
    .local v31, state:Landroid/net/NetworkInfo$State;
    sget-object v34, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_9

    .line 5932
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: not connected ni="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5935
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V

    .line 5936
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v29

    goto :goto_3

    .line 5901
    .end local v9           #binder:Landroid/os/Binder;
    .end local v31           #state:Landroid/net/NetworkInfo$State;
    :cond_6
    const/16 v34, 0x1

    :try_start_4
    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 6081
    .end local v11           #endTime:J
    :catchall_0
    move-exception v34

    :try_start_5
    const-string v35, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v35 .. v36}, Lcom/android/server/QcConnectivityService;->access$20400(Lcom/android/server/QcConnectivityService;I)V

    .line 6083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "enableHIPRI"

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6087
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    const-wide/16 v37, 0x1388

    add-long v11, v35, v37

    .line 6089
    .restart local v11       #endTime:J
    :cond_7
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_22

    .line 6090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    .line 6092
    .restart local v31       #state:Landroid/net/NetworkInfo$State;
    sget-object v35, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_7

    .line 6097
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 5857
    .end local v11           #endTime:J
    .end local v16           #isDefaultProvisioning:Z
    .end local v17           #isHipriProvisioning:Z
    .end local v23           #mdstDefault:Landroid/net/MobileDataStateTracker;
    .end local v24           #mdstHipri:Landroid/net/MobileDataStateTracker;
    .end local v26           #orgUri:Landroid/net/Uri;
    .end local v27           #rand:Ljava/util/Random;
    .end local v29           #result:Ljava/lang/Integer;
    .end local v31           #state:Landroid/net/NetworkInfo$State;
    :catchall_1
    move-exception v34

    monitor-exit p0

    throw v34

    .line 5918
    .restart local v9       #binder:Landroid/os/Binder;
    .restart local v11       #endTime:J
    .restart local v16       #isDefaultProvisioning:Z
    .restart local v17       #isHipriProvisioning:Z
    .restart local v23       #mdstDefault:Landroid/net/MobileDataStateTracker;
    .restart local v24       #mdstHipri:Landroid/net/MobileDataStateTracker;
    .restart local v26       #orgUri:Landroid/net/Uri;
    .restart local v27       #rand:Ljava/util/Random;
    .restart local v29       #result:Ljava/lang/Integer;
    .restart local v30       #ret:I
    :cond_8
    const/16 v34, 0x0

    :try_start_6
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 5919
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 5941
    .end local v30           #ret:I
    .restart local v31       #state:Landroid/net/NetworkInfo$State;
    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v34

    const/16 v35, 0x5

    aget-object v22, v34, v35

    check-cast v22, Landroid/net/MobileDataStateTracker;

    .line 5943
    .local v22, mdst:Landroid/net/MobileDataStateTracker;
    invoke-virtual/range {v22 .. v22}, Landroid/net/MobileDataStateTracker;->isProvisioningNetwork()Z

    move-result v34

    if-eqz v34, :cond_c

    .line 5944
    const/16 v34, 0x5

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 5945
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X isProvisioningNetwork result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 6081
    :try_start_8
    const-string v34, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->access$20400(Lcom/android/server/QcConnectivityService;I)V

    .line 6083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6087
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x1388

    add-long v11, v34, v36

    .line 6089
    :cond_a
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_b

    .line 6090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    .line 6092
    sget-object v34, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_a

    .line 6097
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V

    goto :goto_5

    .line 6102
    :cond_b
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object/from16 v34, v29

    .line 6103
    goto/16 :goto_0

    .line 5948
    :cond_c
    :try_start_9
    const-string v34, "isMobileOk: isProvisioningNetwork is false, continue"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 5958
    :try_start_a
    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v7

    .line 5964
    .local v7, addresses:[Ljava/net/InetAddress;
    :try_start_b
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: addresses="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/QcConnectivityService$CheckMp;->inetAddressesToString([Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v21

    .line 5969
    .local v21, lp:Landroid/net/LinkProperties;
    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v19

    .line 5970
    .local v19, linkHasIpv4:Z
    invoke-virtual/range {v21 .. v21}, Landroid/net/LinkProperties;->hasIPv6Address()Z

    move-result v20

    .line 5971
    .local v20, linkHasIpv6:Z
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: linkHasIpv4="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " linkHasIpv6="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 5974
    new-instance v33, Ljava/util/ArrayList;

    array-length v0, v7

    move/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Ljava/util/ArrayList;-><init>(I)V

    .line 5977
    .local v33, validAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    move-object v8, v7

    .local v8, arr$:[Ljava/net/InetAddress;
    array-length v0, v8

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_6
    move/from16 v0, v18

    if-ge v15, v0, :cond_12

    aget-object v4, v8, v15

    .line 5978
    .local v4, addr:Ljava/net/InetAddress;
    instance-of v0, v4, Ljava/net/Inet4Address;

    move/from16 v34, v0

    if-eqz v34, :cond_d

    if-nez v19, :cond_e

    :cond_d
    instance-of v0, v4, Ljava/net/Inet6Address;

    move/from16 v34, v0

    if-eqz v34, :cond_f

    if-eqz v20, :cond_f

    .line 5980
    :cond_e
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5977
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 5959
    .end local v4           #addr:Ljava/net/InetAddress;
    .end local v7           #addresses:[Ljava/net/InetAddress;
    .end local v8           #arr$:[Ljava/net/InetAddress;
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v19           #linkHasIpv4:Z
    .end local v20           #linkHasIpv6:Z
    .end local v21           #lp:Landroid/net/LinkProperties;
    .end local v33           #validAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v10

    .line 5960
    .local v10, e:Ljava/net/UnknownHostException;
    const/16 v34, 0x2

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 5961
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X UnknownHostException result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 6081
    :try_start_c
    const-string v34, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->access$20400(Lcom/android/server/QcConnectivityService;I)V

    .line 6083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6087
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x1388

    add-long v11, v34, v36

    .line 6089
    :cond_10
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_11

    .line 6090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    .line 6092
    sget-object v34, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_10

    .line 6097
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V

    goto :goto_7

    .line 6102
    :cond_11
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v34, v29

    .line 6103
    goto/16 :goto_0

    .line 5984
    .end local v10           #e:Ljava/net/UnknownHostException;
    .restart local v7       #addresses:[Ljava/net/InetAddress;
    .restart local v8       #arr$:[Ljava/net/InetAddress;
    .restart local v15       #i$:I
    .restart local v18       #len$:I
    .restart local v19       #linkHasIpv4:Z
    .restart local v20       #linkHasIpv6:Z
    .restart local v21       #lp:Landroid/net/LinkProperties;
    .restart local v33       #validAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_12
    :try_start_d
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-nez v34, :cond_15

    .line 5985
    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-result-object v34

    .line 6081
    :try_start_e
    const-string v35, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v35 .. v36}, Lcom/android/server/QcConnectivityService;->access$20400(Lcom/android/server/QcConnectivityService;I)V

    .line 6083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const-string v37, "enableHIPRI"

    invoke-virtual/range {v35 .. v37}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6087
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    const-wide/16 v37, 0x1388

    add-long v11, v35, v37

    .line 6089
    :cond_13
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v35

    cmp-long v35, v35, v11

    if-gez v35, :cond_14

    .line 6090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v35, v0

    const/16 v36, 0x5

    invoke-virtual/range {v35 .. v36}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    .line 6092
    sget-object v35, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_13

    .line 6097
    const/16 v35, 0x1

    invoke-static/range {v35 .. v35}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V

    goto :goto_8

    .line 6102
    :cond_14
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_0

    .line 5988
    :cond_15
    const/4 v5, 0x0

    .local v5, addrTried:I
    move v6, v5

    .line 5992
    .end local v5           #addrTried:I
    .local v6, addrTried:I
    :goto_9
    add-int/lit8 v5, v6, 0x1

    .end local v6           #addrTried:I
    .restart local v5       #addrTried:I
    const/16 v34, 0x3

    move/from16 v0, v34

    if-lt v6, v0, :cond_17

    .line 5993
    :try_start_f
    const-string v34, "too many loops tried - giving up"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6072
    :goto_a
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X loops|timed out result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 6081
    :try_start_10
    const-string v34, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->access$20400(Lcom/android/server/QcConnectivityService;I)V

    .line 6083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6087
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x1388

    add-long v11, v34, v36

    .line 6089
    :cond_16
    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_1e

    .line 6090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    .line 6092
    sget-object v34, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_16

    .line 6097
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_b

    .line 5996
    :cond_17
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-ltz v34, :cond_18

    .line 5997
    const-string v34, "spend too much time - giving up"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_a

    .line 6074
    .end local v5           #addrTried:I
    .end local v7           #addresses:[Ljava/net/InetAddress;
    .end local v8           #arr$:[Ljava/net/InetAddress;
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v19           #linkHasIpv4:Z
    .end local v20           #linkHasIpv6:Z
    .end local v21           #lp:Landroid/net/LinkProperties;
    .end local v22           #mdst:Landroid/net/MobileDataStateTracker;
    .end local v31           #state:Landroid/net/NetworkInfo$State;
    .end local v33           #validAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :catch_1
    move-exception v10

    .line 6075
    .local v10, e:Ljava/lang/Exception;
    :try_start_12
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: Exception e="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_3

    .line 6001
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v5       #addrTried:I
    .restart local v7       #addresses:[Ljava/net/InetAddress;
    .restart local v8       #arr$:[Ljava/net/InetAddress;
    .restart local v15       #i$:I
    .restart local v18       #len$:I
    .restart local v19       #linkHasIpv4:Z
    .restart local v20       #linkHasIpv6:Z
    .restart local v21       #lp:Landroid/net/LinkProperties;
    .restart local v22       #mdst:Landroid/net/MobileDataStateTracker;
    .restart local v31       #state:Landroid/net/NetworkInfo$State;
    .restart local v33       #validAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_18
    :try_start_13
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/net/InetAddress;

    .line 6005
    .local v14, hostAddr:Ljava/net/InetAddress;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual {v14}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/QcConnectivityService;->requestRouteToHostAddress(I[B)Z

    move-result v34

    if-eqz v34, :cond_1a

    .line 6008
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: wait to establish route to hostAddr="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6010
    const/16 v34, 0x3

    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V

    .line 6019
    new-instance v25, Ljava/net/URL;

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v35

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "?q="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const v37, 0x7fffffff

    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6022
    .local v25, newUrl:Ljava/net/URL;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: newUrl="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    .line 6024
    const/16 v32, 0x0

    .line 6027
    .local v32, urlConn:Ljava/net/HttpURLConnection;
    :try_start_14
    sget-object v34, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v34

    move-object/from16 v0, v34

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    .line 6029
    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 6030
    const/16 v34, 0x1388

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 6031
    const/16 v34, 0x1388

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 6032
    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 6033
    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 6036
    const-string v34, "Connection"

    const-string v35, "close"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6037
    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v28

    .line 6040
    .local v28, responseCode:I
    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    .line 6041
    .local v13, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: headers="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6044
    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 6045
    const/16 v32, 0x0

    .line 6047
    const/16 v34, 0xcc

    move/from16 v0, v28

    move/from16 v1, v34

    if-ne v0, v1, :cond_1c

    .line 6049
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 6050
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X expected responseCode="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    .line 6081
    :try_start_15
    const-string v34, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->access$20400(Lcom/android/server/QcConnectivityService;I)V

    .line 6083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6087
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x1388

    add-long v11, v34, v36

    .line 6089
    :cond_19
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_1b

    .line 6090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    .line 6092
    sget-object v34, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_19

    .line 6097
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    goto :goto_c

    .line 6012
    .end local v13           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v25           #newUrl:Ljava/net/URL;
    .end local v28           #responseCode:I
    .end local v32           #urlConn:Ljava/net/HttpURLConnection;
    :cond_1a
    :try_start_16
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: could not establish route to hostAddr="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    move v6, v5

    .line 6014
    .end local v5           #addrTried:I
    .restart local v6       #addrTried:I
    goto/16 :goto_9

    .line 6102
    .end local v6           #addrTried:I
    .restart local v5       #addrTried:I
    .restart local v13       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v25       #newUrl:Ljava/net/URL;
    .restart local v28       #responseCode:I
    .restart local v32       #urlConn:Ljava/net/HttpURLConnection;
    :cond_1b
    :try_start_17
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    move-object/from16 v34, v29

    .line 6103
    goto/16 :goto_0

    .line 6057
    :cond_1c
    :try_start_18
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: not expected responseCode="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6061
    const/16 v34, 0x4

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    move-result-object v29

    .end local v13           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v28           #responseCode:I
    :cond_1d
    :goto_d
    move v6, v5

    .line 6071
    .end local v5           #addrTried:I
    .restart local v6       #addrTried:I
    goto/16 :goto_9

    .line 6063
    .end local v6           #addrTried:I
    .restart local v5       #addrTried:I
    :catch_2
    move-exception v10

    .line 6064
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_19
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: HttpURLConnection Exception e="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6065
    const/16 v34, 0x3

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 6066
    if-eqz v32, :cond_1d

    .line 6067
    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1

    goto :goto_d

    .line 6102
    .end local v10           #e:Ljava/lang/Exception;
    .end local v14           #hostAddr:Ljava/net/InetAddress;
    .end local v25           #newUrl:Ljava/net/URL;
    .end local v32           #urlConn:Ljava/net/HttpURLConnection;
    :cond_1e
    :try_start_1a
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    move-object/from16 v34, v29

    .line 6103
    goto/16 :goto_0

    .line 6079
    .end local v5           #addrTried:I
    .end local v7           #addresses:[Ljava/net/InetAddress;
    .end local v8           #arr$:[Ljava/net/InetAddress;
    .end local v15           #i$:I
    .end local v18           #len$:I
    .end local v19           #linkHasIpv4:Z
    .end local v20           #linkHasIpv6:Z
    .end local v21           #lp:Landroid/net/LinkProperties;
    .end local v22           #mdst:Landroid/net/MobileDataStateTracker;
    .end local v31           #state:Landroid/net/NetworkInfo$State;
    .end local v33           #validAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_1f
    :try_start_1b
    const-string v34, "isMobileOk: timed out"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 6081
    :try_start_1c
    const-string v34, "isMobileOk: F stop hipri"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    #calls: Lcom/android/server/QcConnectivityService;->setEnableFailFastMobileData(I)V
    invoke-static/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->access$20400(Lcom/android/server/QcConnectivityService;I)V

    .line 6083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-string v36, "enableHIPRI"

    invoke-virtual/range {v34 .. v36}, Lcom/android/server/QcConnectivityService;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 6087
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x1388

    add-long v11, v34, v36

    .line 6089
    :cond_20
    :goto_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    cmp-long v34, v34, v11

    if-gez v34, :cond_21

    .line 6090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    move-object/from16 v34, v0

    const/16 v35, 0x5

    invoke-virtual/range {v34 .. v35}, Lcom/android/server/QcConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v31

    .line 6092
    .restart local v31       #state:Landroid/net/NetworkInfo$State;
    sget-object v34, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_20

    .line 6097
    const/16 v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/server/QcConnectivityService$CheckMp;->sleep(I)V

    goto :goto_e

    .line 6102
    .end local v31           #state:Landroid/net/NetworkInfo$State;
    :cond_21
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "isMobileOk: X result="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    move-object/from16 v34, v29

    .line 6104
    goto/16 :goto_0

    .line 6102
    .end local v9           #binder:Landroid/os/Binder;
    :cond_22
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "isMobileOk: X result="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6103
    throw v34
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 6163
    const-string v0, "QcConnectivityService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CheckMp] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6164
    return-void
.end method

.method private printNetworkInfo()V
    .locals 9

    .prologue
    .line 6135
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    .line 6136
    .local v1, hasIccCard:Z
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    .line 6137
    .local v6, simState:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasIccCard="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " simState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6139
    iget-object v7, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mCs:Lcom/android/server/QcConnectivityService;

    invoke-virtual {v7}, Lcom/android/server/QcConnectivityService;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 6140
    .local v5, ni:[Landroid/net/NetworkInfo;
    if-eqz v5, :cond_0

    .line 6141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ni.length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6142
    move-object v0, v5

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 6143
    .local v4, netInfo:Landroid/net/NetworkInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "netInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6146
    .end local v0           #arr$:[Landroid/net/NetworkInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    const-string v7, "no network info ni=null"

    invoke-direct {p0, v7}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6148
    :cond_1
    return-void
.end method

.method private static sleep(I)V
    .locals 3
    .parameter "seconds"

    .prologue
    .line 6156
    mul-int/lit16 v1, p0, 0x3e8

    int-to-long v1, v1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6160
    :goto_0
    return-void

    .line 6157
    :catch_0
    move-exception v0

    .line 6158
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/Integer;
    .locals 1
    .parameter "params"

    .prologue
    .line 6109
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService$CheckMp;->isMobileOk(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5790
    check-cast p1, [Lcom/android/server/QcConnectivityService$CheckMp$Params;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$CheckMp;->doInBackground([Lcom/android/server/QcConnectivityService$CheckMp$Params;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 5843
    iget-object v1, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "captive_portal_server"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5845
    .local v0, server:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5846
    const-string v0, "clients3.google.com"

    .line 5848
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 6114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/QcConnectivityService$CheckMp;->log(Ljava/lang/String;)V

    .line 6115
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mParams:Lcom/android/server/QcConnectivityService$CheckMp$Params;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mParams:Lcom/android/server/QcConnectivityService$CheckMp$Params;

    #getter for: Lcom/android/server/QcConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/QcConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService$CheckMp$Params;->access$20500(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Lcom/android/server/QcConnectivityService$CheckMp$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6116
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$CheckMp;->mParams:Lcom/android/server/QcConnectivityService$CheckMp$Params;

    #getter for: Lcom/android/server/QcConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/QcConnectivityService$CheckMp$CallBack;
    invoke-static {v0}, Lcom/android/server/QcConnectivityService$CheckMp$Params;->access$20500(Lcom/android/server/QcConnectivityService$CheckMp$Params;)Lcom/android/server/QcConnectivityService$CheckMp$CallBack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/QcConnectivityService$CheckMp$CallBack;->onComplete(Ljava/lang/Integer;)V

    .line 6118
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5790
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/QcConnectivityService$CheckMp;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
