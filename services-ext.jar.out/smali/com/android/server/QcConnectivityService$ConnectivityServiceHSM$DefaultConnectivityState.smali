.class final Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;
.super Lcom/android/internal/util/State;
.source "QcConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultConnectivityState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;


# direct methods
.method public constructor <init>(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)V
    .locals 0
    .parameter

    .prologue
    .line 3226
    iput-object p1, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 3227
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 3231
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3232
    return-void
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 3236
    iget-object v0, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityServiceHSM leaving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3237
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 28
    .parameter "msg"

    .prologue
    .line 3241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Actual State: DefaultConnectivityState, Current State: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v25, v0

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v25 .. v25}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".processMessage what="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1800(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3245
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_0

    .line 3524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v25, v0

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static/range {v25 .. v25}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$5900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;)Lcom/android/internal/util/IState;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " ignoring unhandled message"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->loge(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$6000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3528
    :cond_0
    :goto_0
    const/16 v23, 0x1

    return v23

    .line 3248
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/NetworkInfo;

    .line 3249
    .local v9, info:Landroid/net/NetworkInfo;
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v19

    .line 3251
    .local v19, state:Landroid/net/NetworkInfo$State;
    sget-object v23, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1

    sget-object v23, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1

    sget-object v23, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 3254
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ConnectivityChange for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ": "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$1900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3265
    :cond_2
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v23

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$1100(Lcom/android/server/QcConnectivityService;)Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "device_provisioned"

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    if-eqz v23, :cond_5

    sget-object v23, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    if-eqz v23, :cond_4

    :cond_3
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 3271
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    const-string v24, "ConnectivityChange checkMobileProvisioning for TYPE_MOBILE or ProvisioningNetwork"

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    const v24, 0xea60

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/QcConnectivityService;->checkMobileProvisioning(I)I

    .line 3276
    :cond_5
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v23

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v24

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v25

    invoke-static/range {v23 .. v25}, Lcom/android/server/EventLogTags;->writeConnectivityStateChanged(III)V

    .line 3279
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 3281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    const/16 v24, 0x138d

    move-object/from16 v0, v23

    move/from16 v1, v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v9}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2100(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    .line 3322
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$2800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 3323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$2800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3282
    :cond_7
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    sget-object v24, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 3284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    const/16 v24, 0x1391

    move-object/from16 v0, v23

    move/from16 v1, v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v9}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2200(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto :goto_1

    .line 3285
    :cond_8
    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 3296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/QcConnectivityService;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v11

    .line 3298
    .local v11, lp:Landroid/net/LinkProperties;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_STATE_CHANGED: connected to provisioning network, lp="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2300(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    .line 3305
    invoke-virtual {v11}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/RouteInfo;

    .line 3306
    .local v17, r:Landroid/net/RouteInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v24

    #calls: Lcom/android/server/QcConnectivityService;->removeRoute(Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z
    invoke-static {v0, v11, v1, v2}, Lcom/android/server/QcConnectivityService;->access$2400(Lcom/android/server/QcConnectivityService;Landroid/net/LinkProperties;Landroid/net/RouteInfo;Z)Z

    goto :goto_2

    .line 3308
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #lp:Landroid/net/LinkProperties;
    .end local v17           #r:Landroid/net/RouteInfo;
    :cond_9
    sget-object v23, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_a

    .line 3309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    const/16 v24, 0x138a

    move-object/from16 v0, v23

    move/from16 v1, v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v9}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3310
    :cond_a
    sget-object v23, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_b

    .line 3318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    const/16 v24, 0x138a

    move-object/from16 v0, v23

    move/from16 v1, v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v9}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3319
    :cond_b
    sget-object v23, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 3320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    const/16 v24, 0x1389

    move-object/from16 v0, v23

    move/from16 v1, v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    invoke-static {v0, v1, v9}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2700(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 3329
    .end local v9           #info:Landroid/net/NetworkInfo;
    .end local v19           #state:Landroid/net/NetworkInfo$State;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/NetworkInfo;

    .line 3333
    .restart local v9       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    const/16 v25, 0x138b

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v26

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$2900(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3340
    .end local v9           #info:Landroid/net/NetworkInfo;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/NetworkInfo;

    .line 3341
    .restart local v9       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    const/16 v25, 0x1393

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v26

    const/16 v27, 0x0

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$3000(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3348
    .end local v9           #info:Landroid/net/NetworkInfo;
    :sswitch_3
    const/4 v3, 0x0

    .line 3349
    .local v3, causedBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 3350
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/QcConnectivityService;->access$3100(Lcom/android/server/QcConnectivityService;)I

    move-result v25

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$3200(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 3352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$3200(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$3300(Lcom/android/server/QcConnectivityService;)Ljava/lang/String;

    move-result-object v3

    .line 3355
    :cond_c
    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3356
    if-eqz v3, :cond_0

    .line 3357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "NetTransition Wakelock for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " released by timeout"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$3400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3355
    :catchall_0
    move-exception v23

    :try_start_1
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v23

    .line 3363
    .end local v3           #causedBy:Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/server/QcConnectivityService$FeatureUser;

    .line 3364
    .local v22, u:Lcom/android/server/QcConnectivityService$FeatureUser;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/QcConnectivityService$FeatureUser;->expire()V

    goto/16 :goto_0

    .line 3369
    .end local v22           #u:Lcom/android/server/QcConnectivityService$FeatureUser;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    const/16 v25, 0x138e

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$3500(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3375
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    const/16 v25, 0x138f

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$3600(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3381
    :sswitch_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 3382
    .local v16, preference:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    #calls: Lcom/android/server/QcConnectivityService;->handleSetNetworkPreference(I)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService;->access$3700(Lcom/android/server/QcConnectivityService;I)V

    goto/16 :goto_0

    .line 3387
    .end local v16           #preference:I
    :sswitch_8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    const/4 v6, 0x1

    .line 3388
    .local v6, enabled:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/QcConnectivityService;->handleSetMobileData(Z)V
    invoke-static {v0, v6}, Lcom/android/server/QcConnectivityService;->access$3800(Lcom/android/server/QcConnectivityService;Z)V

    goto/16 :goto_0

    .line 3387
    .end local v6           #enabled:Z
    :cond_d
    const/4 v6, 0x0

    goto :goto_3

    .line 3393
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #calls: Lcom/android/server/QcConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$3900(Lcom/android/server/QcConnectivityService;)V

    goto/16 :goto_0

    .line 3398
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    const/4 v12, 0x1

    .line 3399
    .local v12, met:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    #calls: Lcom/android/server/QcConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v0, v1, v12}, Lcom/android/server/QcConnectivityService;->access$4000(Lcom/android/server/QcConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3398
    .end local v12           #met:Z
    :cond_e
    const/4 v12, 0x0

    goto :goto_4

    .line 3404
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/content/Intent;

    .line 3405
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/QcConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v0, v10}, Lcom/android/server/QcConnectivityService;->access$4100(Lcom/android/server/QcConnectivityService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3410
    .end local v10           #intent:Landroid/content/Intent;
    :sswitch_c
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    .line 3411
    .local v15, networkType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    const/4 v6, 0x1

    .line 3412
    .restart local v6       #enabled:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/QcConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v0, v15, v6}, Lcom/android/server/QcConnectivityService;->access$4200(Lcom/android/server/QcConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3411
    .end local v6           #enabled:Z
    :cond_f
    const/4 v6, 0x0

    goto :goto_5

    .line 3417
    .end local v15           #networkType:I
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$2800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 3418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$2800(Lcom/android/server/QcConnectivityService;)Lcom/android/server/net/LockdownVpnTracker;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/net/NetworkInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3423
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$4300(Lcom/android/server/QcConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v20

    .line 3424
    .local v20, tag:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 3425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v13, v23, v24

    check-cast v13, Landroid/net/MobileDataStateTracker;

    .line 3427
    .local v13, mobileDst:Landroid/net/MobileDataStateTracker;
    if-eqz v13, :cond_0

    .line 3428
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    goto/16 :goto_0

    .line 3431
    .end local v13           #mobileDst:Landroid/net/MobileDataStateTracker;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_ENABLE_FAIL_FAST_MOBILE_DATA: stale arg1:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " != tag:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    #calls: Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->log(Ljava/lang/String;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->access$4400(Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3437
    .end local v20           #tag:I
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #calls: Lcom/android/server/QcConnectivityService;->handleNetworkSamplingTimeout()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$4500(Lcom/android/server/QcConnectivityService;)V

    goto/16 :goto_0

    .line 3441
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/net/ProxyProperties;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    #calls: Lcom/android/server/QcConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyProperties;)V
    invoke-static {v0, v1}, Lcom/android/server/QcConnectivityService;->access$4600(Lcom/android/server/QcConnectivityService;Landroid/net/ProxyProperties;)V

    goto/16 :goto_0

    .line 3446
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v23

    #calls: Lcom/android/server/QcConnectivityService;->handleUpdateBlockedUids(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/server/QcConnectivityService;->access$4700(Lcom/android/server/QcConnectivityService;IZ)V

    goto/16 :goto_0

    :cond_11
    const/16 v23, 0x0

    goto :goto_6

    .line 3456
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/NetworkInfo;

    .line 3457
    .restart local v9       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/QcConnectivityService;->handleConnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v9}, Lcom/android/server/QcConnectivityService;->access$4800(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3460
    .end local v9           #info:Landroid/net/NetworkInfo;
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/NetworkInfo;

    .line 3461
    .restart local v9       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/QcConnectivityService;->handleDisconnect(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v9}, Lcom/android/server/QcConnectivityService;->access$4900(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3465
    .end local v9           #info:Landroid/net/NetworkInfo;
    :sswitch_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 3466
    .local v21, type:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    const/4 v5, 0x1

    .line 3467
    .local v5, doReset:Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    #calls: Lcom/android/server/QcConnectivityService;->handleConnectivityChange(IZ)V
    invoke-static {v0, v1, v5}, Lcom/android/server/QcConnectivityService;->access$5000(Lcom/android/server/QcConnectivityService;IZ)V

    goto/16 :goto_0

    .line 3466
    .end local v5           #doReset:Z
    :cond_12
    const/4 v5, 0x0

    goto :goto_7

    .line 3471
    .end local v21           #type:I
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    #calls: Lcom/android/server/QcConnectivityService;->handleDnsConfigurationChange(I)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService;->access$5100(Lcom/android/server/QcConnectivityService;I)V

    goto/16 :goto_0

    .line 3474
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/NetworkInfo;

    .line 3475
    .restart local v9       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/QcConnectivityService;->handleConnectionFailure(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v9}, Lcom/android/server/QcConnectivityService;->access$5200(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 3478
    .end local v9           #info:Landroid/net/NetworkInfo;
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/net/NetworkInfo;

    .line 3479
    .restart local v9       #info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/QcConnectivityService;->handleCaptivePortalTrackerCheck(Landroid/net/NetworkInfo;)V
    invoke-static {v0, v9}, Lcom/android/server/QcConnectivityService;->access$5300(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkInfo;)V

    .line 3482
    .end local v9           #info:Landroid/net/NetworkInfo;
    :sswitch_18
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 3483
    .local v14, netType:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 3484
    .local v4, condition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/android/server/QcConnectivityService;->handleInetConditionChange(II)V
    invoke-static {v0, v14, v4}, Lcom/android/server/QcConnectivityService;->access$5400(Lcom/android/server/QcConnectivityService;II)V

    goto/16 :goto_0

    .line 3489
    .end local v4           #condition:I
    .end local v14           #netType:I
    :sswitch_19
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 3490
    .restart local v14       #netType:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    .line 3491
    .local v18, sequence:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    #calls: Lcom/android/server/QcConnectivityService;->handleInetConditionHoldEnd(II)V
    invoke-static {v0, v14, v1}, Lcom/android/server/QcConnectivityService;->access$5500(Lcom/android/server/QcConnectivityService;II)V

    goto/16 :goto_0

    .line 3496
    .end local v14           #netType:I
    .end local v18           #sequence:I
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 3502
    .local v7, forWhom:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$3200(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v23

    if-nez v23, :cond_0

    .line 3504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$3108(Lcom/android/server/QcConnectivityService;)I

    .line 3505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$3200(Lcom/android/server/QcConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #setter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/android/server/QcConnectivityService;->access$3302(Lcom/android/server/QcConnectivityService;Ljava/lang/String;)Ljava/lang/String;

    .line 3508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    const/16 v25, 0x6c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v26, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/QcConnectivityService;->access$3100(Lcom/android/server/QcConnectivityService;)I

    move-result v26

    const/16 v27, -0x1

    invoke-virtual/range {v24 .. v27}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->obtainMessage(III)Landroid/os/Message;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v25, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTransitionWakeLockTimeout:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/QcConnectivityService;->access$5600(Lcom/android/server/QcConnectivityService;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    invoke-virtual/range {v23 .. v26}, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 3515
    .end local v7           #forWhom:Ljava/lang/String;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    #calls: Lcom/android/server/QcConnectivityService;->enforcePreference()V
    invoke-static/range {v23 .. v23}, Lcom/android/server/QcConnectivityService;->access$5700(Lcom/android/server/QcConnectivityService;)V

    goto/16 :goto_0

    .line 3519
    :sswitch_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 3520
    .restart local v21       #type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM$DefaultConnectivityState;->this$1:Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/QcConnectivityService$ConnectivityServiceHSM;->this$0:Lcom/android/server/QcConnectivityService;

    move-object/from16 v24, v0

    #getter for: Lcom/android/server/QcConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static/range {v24 .. v24}, Lcom/android/server/QcConnectivityService;->access$1000(Lcom/android/server/QcConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v24

    aget-object v24, v24, v21

    #calls: Lcom/android/server/QcConnectivityService;->updateNetworkSettings(Landroid/net/NetworkStateTracker;)V
    invoke-static/range {v23 .. v24}, Lcom/android/server/QcConnectivityService;->access$5800(Lcom/android/server/QcConnectivityService;Landroid/net/NetworkStateTracker;)V

    goto/16 :goto_0

    .line 3245
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_4
        0x67 -> :sswitch_7
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6b -> :sswitch_8
        0x6c -> :sswitch_3
        0x6d -> :sswitch_9
        0x6e -> :sswitch_a
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x71 -> :sswitch_d
        0x72 -> :sswitch_e
        0x73 -> :sswitch_f
        0x74 -> :sswitch_10
        0x1f5 -> :sswitch_11
        0x1389 -> :sswitch_12
        0x138a -> :sswitch_13
        0x138b -> :sswitch_14
        0x138c -> :sswitch_15
        0x138d -> :sswitch_16
        0x138e -> :sswitch_18
        0x138f -> :sswitch_19
        0x1390 -> :sswitch_1b
        0x1391 -> :sswitch_17
        0x1392 -> :sswitch_1a
        0x1393 -> :sswitch_1c
        0x70000 -> :sswitch_0
        0x70001 -> :sswitch_1
        0x70003 -> :sswitch_2
    .end sparse-switch
.end method
