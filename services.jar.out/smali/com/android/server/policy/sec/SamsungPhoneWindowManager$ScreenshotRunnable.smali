.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenshotRunnable"
.end annotation


# instance fields
.field mConn:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V
    .locals 1
    .param p2, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 2384
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    .line 2385
    iput-object p2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    .line 2386
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v1, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2391
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2392
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;->mConn:Landroid/content/ServiceConnection;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    :cond_0
    monitor-exit v1

    .line 2395
    return-void

    .line 2394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
