.class Lcom/android/server/wifi/WifiTrafficPoller$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-set1(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-wrap0(Lcom/android/server/wifi/WifiTrafficPoller;)V

    return-void

    :cond_2
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get4(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiTrafficPoller$1;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v0}, Lcom/android/server/wifi/WifiTrafficPoller;->-get4(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
