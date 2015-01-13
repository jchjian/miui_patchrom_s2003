.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 1313
    const-string v0, "jch_jian"

    const-string v1, ">>>mNavbarObserver  onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavbarStateInDb()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$navbardb(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/String;

    move-result-object v1

    .line 1315
    .local v1, navbar:Ljava/lang/String;
    const-string v2, "show"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1316
    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshShowNavigationBar()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$shownavbar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    :goto_0
    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$mContext-jjc(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/content/Context;

    move-result-object v0

    .line 1316
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.app.ExtraStatusBarManager.REQUEST_RESTART"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, localIntent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1322
    return-void

    .line 1317
    :cond_0
    const-string v2, "hide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1318
    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshHideNavigationBar()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$hidenavbar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_0

    .line 1320
    :cond_1
    const-string v1, "jch_jian"

    const-string v2, ">>>mNavbarObserver  onChange db not data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
