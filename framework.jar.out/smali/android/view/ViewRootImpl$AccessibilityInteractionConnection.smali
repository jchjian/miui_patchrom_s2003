.class final Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;
.super Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AccessibilityInteractionConnection"
.end annotation


# instance fields
.field private final mViewRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .parameter "viewRootImpl"

    .prologue
    .line 6568
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;-><init>()V

    .line 6569
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    .line 6570
    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityId(JILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 11
    .parameter "accessibilityNodeId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"
    .parameter "spec"

    .prologue
    .line 6576
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewRootImpl;

    .line 6577
    .local v10, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v10, :cond_0

    iget-object v0, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6578
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdClientThread(JILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 6590
    :goto_0
    return-void

    .line 6585
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p4, v0, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6586
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByText(JLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 14
    .parameter "accessibilityNodeId"
    .parameter "text"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"
    .parameter "spec"

    .prologue
    .line 6637
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 6638
    .local v13, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v13, :cond_0

    iget-object v2, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 6639
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 6651
    :goto_0
    return-void

    .line 6646
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6647
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByViewId(JLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 14
    .parameter "accessibilityNodeId"
    .parameter "viewId"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"
    .parameter "spec"

    .prologue
    .line 6617
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 6618
    .local v13, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v13, :cond_0

    iget-object v2, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 6619
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide v3, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 6631
    :goto_0
    return-void

    .line 6626
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6627
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public findFocus(JIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 14
    .parameter "accessibilityNodeId"
    .parameter "focusType"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"
    .parameter "spec"

    .prologue
    .line 6657
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 6658
    .local v13, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v13, :cond_0

    iget-object v2, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 6659
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/view/AccessibilityInteractionController;->findFocusClientThread(JIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 6670
    :goto_0
    return-void

    .line 6665
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6666
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public focusSearch(JIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 14
    .parameter "accessibilityNodeId"
    .parameter "direction"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interrogatingPid"
    .parameter "interrogatingTid"
    .parameter "spec"

    .prologue
    .line 6676
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 6677
    .local v13, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v13, :cond_0

    iget-object v2, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 6678
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide v3, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    invoke-virtual/range {v2 .. v12}, Landroid/view/AccessibilityInteractionController;->focusSearchClientThread(JIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V

    .line 6689
    :goto_0
    return-void

    .line 6684
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6685
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 14
    .parameter "accessibilityNodeId"
    .parameter "action"
    .parameter "arguments"
    .parameter "interactionId"
    .parameter "callback"
    .parameter "flags"
    .parameter "interogatingPid"
    .parameter "interrogatingTid"

    .prologue
    .line 6597
    iget-object v2, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/ViewRootImpl;

    .line 6598
    .local v13, viewRootImpl:Landroid/view/ViewRootImpl;
    if-eqz v13, :cond_0

    iget-object v2, v13, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 6599
    invoke-virtual {v13}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;

    move-result-object v2

    move-wide v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V

    .line 6610
    :goto_0
    return-void

    .line 6605
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-interface {v0, v2, v1}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6606
    :catch_0
    move-exception v2

    goto :goto_0
.end method
