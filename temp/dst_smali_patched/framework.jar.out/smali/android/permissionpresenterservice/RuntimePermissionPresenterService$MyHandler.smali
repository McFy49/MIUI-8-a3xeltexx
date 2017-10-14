.class final Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;
.super Landroid/os/Handler;
.source "RuntimePermissionPresenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_GET_APPS_USING_PERMISSIONS:I = 0x2

.field public static final MSG_GET_APP_PERMISSIONS:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;


# direct methods
.method public constructor <init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "packageName":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/RemoteCallback;

    .local v2, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v7, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-virtual {v7, v3}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onGetAppPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .local v4, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    invoke-virtual {v2, v9}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .local v5, "result":Landroid/os/Bundle;
    const-string v7, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_0

    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callback":Landroid/os/RemoteCallback;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    .end local v5    # "result":Landroid/os/Bundle;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/RemoteCallback;

    .restart local v2    # "callback":Landroid/os/RemoteCallback;
    iget v7, p1, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v6, 0x1

    .local v6, "system":Z
    :goto_1
    iget-object v7, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-virtual {v7, v6}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onGetAppsUsingPermissions(Z)Ljava/util/List;

    move-result-object v0

    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    invoke-virtual {v2, v9}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6    # "system":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "system":Z
    goto :goto_1

    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_4
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .restart local v5    # "result":Landroid/os/Bundle;
    const-string v7, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
