.class Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantSaver"
.end annotation


# instance fields
.field private final mNetId:I

.field private final mSetterSSID:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigStore;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigStore;
    .param p2, "netId"    # I
    .param p3, "setterSSID"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->mNetId:I

    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->mSetterSSID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public saveValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const-string v0, "password"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "realm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "plmn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    if-nez p2, :cond_3

    const-string p2, "\"\""

    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->-get1(Lcom/android/server/wifi/WifiConfigStore;)Lcom/android/server/wifi/WifiNative;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->mNetId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wifi/WifiNative;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$SupplicantSaver;->mSetterSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": failed to set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_4
    return v2
.end method
