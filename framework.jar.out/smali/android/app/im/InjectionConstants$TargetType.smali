.class public final enum Landroid/app/im/InjectionConstants$TargetType;
.super Ljava/lang/Enum;
.source "InjectionConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/im/InjectionConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/im/InjectionConstants$TargetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/im/InjectionConstants$TargetType;

.field public static final enum ACTIVITY:Landroid/app/im/InjectionConstants$TargetType;

.field public static final enum FRAGMENT:Landroid/app/im/InjectionConstants$TargetType;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Landroid/app/im/InjectionConstants$TargetType;

    const-string v1, "ACTIVITY"

    const-string v2, "activity"

    invoke-direct {v0, v1, v3, v2}, Landroid/app/im/InjectionConstants$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/im/InjectionConstants$TargetType;->ACTIVITY:Landroid/app/im/InjectionConstants$TargetType;

    new-instance v0, Landroid/app/im/InjectionConstants$TargetType;

    const-string v1, "FRAGMENT"

    const-string v2, "fragment"

    invoke-direct {v0, v1, v4, v2}, Landroid/app/im/InjectionConstants$TargetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/app/im/InjectionConstants$TargetType;->FRAGMENT:Landroid/app/im/InjectionConstants$TargetType;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/im/InjectionConstants$TargetType;

    sget-object v1, Landroid/app/im/InjectionConstants$TargetType;->ACTIVITY:Landroid/app/im/InjectionConstants$TargetType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/im/InjectionConstants$TargetType;->FRAGMENT:Landroid/app/im/InjectionConstants$TargetType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/im/InjectionConstants$TargetType;->$VALUES:[Landroid/app/im/InjectionConstants$TargetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Landroid/app/im/InjectionConstants$TargetType;->text:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/im/InjectionConstants$TargetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Landroid/app/im/InjectionConstants$TargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/im/InjectionConstants$TargetType;

    return-object v0
.end method

.method public static values()[Landroid/app/im/InjectionConstants$TargetType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/app/im/InjectionConstants$TargetType;->$VALUES:[Landroid/app/im/InjectionConstants$TargetType;

    invoke-virtual {v0}, [Landroid/app/im/InjectionConstants$TargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/im/InjectionConstants$TargetType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Landroid/app/im/InjectionConstants$TargetType;->text:Ljava/lang/String;

    return-object v0
.end method
