.class Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;
.super Ljava/lang/Thread;
.source "VoiceSenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoiceSenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceSenseWorkerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VoiceSenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/VoiceSenseService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 440
    iput-object p1, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    .line 441
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 442
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 444
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 445
    iget-object v3, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    new-instance v4, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;

    iget-object v5, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;-><init>(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$1;)V

    #setter for: Lcom/android/server/VoiceSenseService;->mHandler:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;
    invoke-static {v3, v4}, Lcom/android/server/VoiceSenseService;->access$1802(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;)Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;

    .line 446
    iget-object v3, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    new-instance v4, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    iget-object v5, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    iget-object v6, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    #getter for: Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/VoiceSenseService;->access$1100(Lcom/android/server/VoiceSenseService;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;-><init>(Lcom/android/server/VoiceSenseService;Landroid/content/Context;)V

    #setter for: Lcom/android/server/VoiceSenseService;->vsObserver:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;
    invoke-static {v3, v4}, Lcom/android/server/VoiceSenseService;->access$2002(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$VoiseSenseObserver;)Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    .line 448
    const-string v3, "persist.sys.voicesence"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 450
    .local v2, voiceenable:I
    const-string v3, "persist.sys.silent_powerOn"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 451
    .local v0, silentPowerOn:Z
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    #getter for: Lcom/android/server/VoiceSenseService;->mIsVsOpen:Z
    invoke-static {v3}, Lcom/android/server/VoiceSenseService;->access$2100(Lcom/android/server/VoiceSenseService;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 453
    new-instance v1, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;

    invoke-direct {v1, p0}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;-><init>(Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;)V

    .line 485
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 489
    .end local v1           #t:Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 490
    return-void
.end method
