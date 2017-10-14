.class public abstract Landroid/app/IAppTask$Stub;
.super Landroid/os/Binder;
.source "IAppTask.java"

# interfaces
.implements Landroid/app/IAppTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAppTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAppTask$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAppTask"

.field static final TRANSACTION_finishAndRemoveTask:I = 0x1

.field static final TRANSACTION_getTaskInfo:I = 0x2

.field static final TRANSACTION_moveToFront:I = 0x3

.field static final TRANSACTION_setExcludeFromRecents:I = 0x5

.field static final TRANSACTION_startActivity_3:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IAppTask"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAppTask$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.app.IAppTask"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IAppTask;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/IAppTask;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IAppTask$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IAppTask$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v6, 0x0

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_1
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IAppTask$Stub;->finishAndRemoveTask()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_2
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IAppTask$Stub;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v8

    .local v8, "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_0

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, p3, v9}, Landroid/app/ActivityManager$RecentTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return v9

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v8    # "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    :sswitch_3
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/IAppTask$Stub;->moveToFront()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    :sswitch_4
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IAppTask$Stub;->startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v7

    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v9

    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v7    # "_result":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg2":Landroid/content/Intent;
    goto :goto_1

    .end local v3    # "_arg2":Landroid/content/Intent;
    .restart local v4    # "_arg3":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    .local v5, "_arg4":Landroid/os/Bundle;
    goto :goto_2

    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_5
    const-string v0, "android.app.IAppTask"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v6, v9

    .local v6, "_arg0":Z
    :cond_3
    invoke-virtual {p0, v6}, Landroid/app/IAppTask$Stub;->setExcludeFromRecents(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
