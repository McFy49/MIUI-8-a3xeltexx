.class Lcom/android/server/accessibility/SamsungMagnifierWindow$2;
.super Landroid/content/BroadcastReceiver;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 651
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$2;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    # invokes: Lcom/android/server/accessibility/SamsungMagnifierWindow;->configChanged()V
    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    .line 654
    :cond_0
    return-void
.end method
