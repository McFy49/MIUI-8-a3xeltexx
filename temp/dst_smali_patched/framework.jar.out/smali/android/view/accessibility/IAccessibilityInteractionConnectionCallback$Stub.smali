.class public abstract Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityInteractionConnectionCallback.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

.field static final TRANSACTION_setFindAccessibilityNodeInfoResult:I = 0x1

.field static final TRANSACTION_setFindAccessibilityNodeInfosResult_1:I = 0x2

.field static final TRANSACTION_setPerformAccessibilityActionResult_2:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v1, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_1
    const-string v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    return v5

    .end local v3    # "_arg1":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/view/accessibility/AccessibilityNodeInfo;
    goto :goto_0

    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityNodeInfo;
    :sswitch_2
    const-string v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    return v5

    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v3    # "_arg1":I
    :sswitch_3
    const-string v4, "android.view.accessibility.IAccessibilityInteractionConnectionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .local v2, "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;->setPerformAccessibilityActionResult(ZI)V

    return v5

    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
