.class public abstract Landroid/net/wifi/nan/IWifiNanEventListener$Stub;
.super Landroid/os/Binder;
.source "IWifiNanEventListener.java"

# interfaces
.implements Landroid/net/wifi/nan/IWifiNanEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nan/IWifiNanEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nan.IWifiNanEventListener"

.field static final TRANSACTION_onConfigCompleted:I = 0x1

.field static final TRANSACTION_onConfigFailed:I = 0x2

.field static final TRANSACTION_onIdentityChanged:I = 0x4

.field static final TRANSACTION_onNanDown:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanEventListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/nan/IWifiNanEventListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/nan/IWifiNanEventListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string v3, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_1
    const-string v3, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/net/wifi/nan/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/nan/ConfigRequest;

    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onConfigCompleted(Landroid/net/wifi/nan/ConfigRequest;)V

    return v4

    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    goto :goto_0

    .end local v1    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    :sswitch_2
    const-string v3, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/net/wifi/nan/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/nan/ConfigRequest;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onConfigFailed(Landroid/net/wifi/nan/ConfigRequest;I)V

    return v4

    .end local v2    # "_arg1":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    goto :goto_1

    .end local v1    # "_arg0":Landroid/net/wifi/nan/ConfigRequest;
    :sswitch_3
    const-string v3, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onNanDown(I)V

    return v4

    .end local v0    # "_arg0":I
    :sswitch_4
    const-string v3, "android.net.wifi.nan.IWifiNanEventListener"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/nan/IWifiNanEventListener$Stub;->onIdentityChanged()V

    return v4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
