.class final Landroid/net/wifi/nan/SubscribeData$1;
.super Ljava/lang/Object;
.source "SubscribeData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/SubscribeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/nan/SubscribeData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nan/SubscribeData;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "serviceName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "ssiLength":I
    new-array v2, v3, [B

    .local v2, "ssi":[B
    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "txFilterLength":I
    new-array v4, v5, [B

    .local v4, "txFilter":[B
    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "rxFilterLength":I
    new-array v6, v7, [B

    .local v6, "rxFilter":[B
    if-eqz v7, :cond_2

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_2
    new-instance v0, Landroid/net/wifi/nan/SubscribeData;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/net/wifi/nan/SubscribeData;-><init>(Ljava/lang/String;[BI[BI[BILandroid/net/wifi/nan/SubscribeData;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/nan/SubscribeData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/nan/SubscribeData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/nan/SubscribeData;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/wifi/nan/SubscribeData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/nan/SubscribeData$1;->newArray(I)[Landroid/net/wifi/nan/SubscribeData;

    move-result-object v0

    return-object v0
.end method
