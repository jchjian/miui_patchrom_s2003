.class final Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VoiceSenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoiceSenseService$VoiseSenseObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BootCompletedReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/VoiceSenseService$VoiseSenseObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;->this$1:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VoiceSenseService$VoiseSenseObserver;Lcom/android/server/VoiceSenseService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;-><init>(Lcom/android/server/VoiceSenseService$VoiseSenseObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 539
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;->this$1:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    #getter for: Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->voiceSenseUevent:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->access$2300(Lcom/android/server/VoiceSenseService$VoiseSenseObserver;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;->this$1:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    iget-object v2, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;->this$1:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    #getter for: Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->voiceSenseUevent:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->access$2300(Lcom/android/server/VoiceSenseService$VoiseSenseObserver;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->startObserving(Ljava/lang/String;)V

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    :cond_0
    return-void
.end method
