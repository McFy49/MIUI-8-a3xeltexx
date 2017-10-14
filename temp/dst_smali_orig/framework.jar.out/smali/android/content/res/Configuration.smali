.class public final Landroid/content/res/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Configuration$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/Configuration;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENSITY_DPI_ANY:I = 0xfffe

.field public static final DENSITY_DPI_NONE:I = 0xffff

.field public static final DENSITY_DPI_UNDEFINED:I = 0x0

.field public static final EMPTY:Landroid/content/res/Configuration;

.field public static final HARDKEYBOARDHIDDEN_NO:I = 0x1

.field public static final HARDKEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final HARDKEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARDHIDDEN_NO:I = 0x1

.field public static final KEYBOARDHIDDEN_SOFT:I = 0x3

.field public static final KEYBOARDHIDDEN_UNDEFINED:I = 0x0

.field public static final KEYBOARDHIDDEN_YES:I = 0x2

.field public static final KEYBOARD_12KEY:I = 0x3

.field public static final KEYBOARD_NOKEYS:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEFINED:I = 0x0

.field public static final MNC_ZERO:I = 0xffff

.field public static final NATIVE_CONFIG_DENSITY:I = 0x100

.field public static final NATIVE_CONFIG_KEYBOARD:I = 0x10

.field public static final NATIVE_CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final NATIVE_CONFIG_LAYOUTDIR:I = 0x4000

.field public static final NATIVE_CONFIG_LOCALE:I = 0x4

.field public static final NATIVE_CONFIG_MCC:I = 0x1

.field public static final NATIVE_CONFIG_MNC:I = 0x2

.field public static final NATIVE_CONFIG_NAVIGATION:I = 0x40

.field public static final NATIVE_CONFIG_ORIENTATION:I = 0x80

.field public static final NATIVE_CONFIG_SCREEN_LAYOUT:I = 0x800

.field public static final NATIVE_CONFIG_SCREEN_SIZE:I = 0x200

.field public static final NATIVE_CONFIG_SMALLEST_SCREEN_SIZE:I = 0x2000

.field public static final NATIVE_CONFIG_TOUCHSCREEN:I = 0x8

.field public static final NATIVE_CONFIG_UI_MODE:I = 0x1000

.field public static final NATIVE_CONFIG_VERSION:I = 0x400

.field public static final NAVIGATIONHIDDEN_NO:I = 0x1

.field public static final NAVIGATIONHIDDEN_UNDEFINED:I = 0x0

.field public static final NAVIGATIONHIDDEN_YES:I = 0x2

.field public static final NAVIGATION_DPAD:I = 0x2

.field public static final NAVIGATION_NONAV:I = 0x1

.field public static final NAVIGATION_TRACKBALL:I = 0x3

.field public static final NAVIGATION_UNDEFINED:I = 0x0

.field public static final NAVIGATION_WHEEL:I = 0x4

.field public static final ORIENTATION_LANDSCAPE:I = 0x2

.field public static final ORIENTATION_PORTRAIT:I = 0x1

.field public static final ORIENTATION_SQUARE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_COMPAT_NEEDED:I = 0x10000000

.field public static final SCREENLAYOUT_LAYOUTDIR_LTR:I = 0x40

.field public static final SCREENLAYOUT_LAYOUTDIR_MASK:I = 0xc0

.field public static final SCREENLAYOUT_LAYOUTDIR_RTL:I = 0x80

.field public static final SCREENLAYOUT_LAYOUTDIR_SHIFT:I = 0x6

.field public static final SCREENLAYOUT_LAYOUTDIR_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_MASK:I = 0x30

.field public static final SCREENLAYOUT_LONG_NO:I = 0x10

.field public static final SCREENLAYOUT_LONG_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_LONG_YES:I = 0x20

.field public static final SCREENLAYOUT_ROUND_MASK:I = 0x300

.field public static final SCREENLAYOUT_ROUND_NO:I = 0x100

.field public static final SCREENLAYOUT_ROUND_SHIFT:I = 0x8

.field public static final SCREENLAYOUT_ROUND_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_ROUND_YES:I = 0x200

.field public static final SCREENLAYOUT_SIZE_LARGE:I = 0x3

.field public static final SCREENLAYOUT_SIZE_MASK:I = 0xf

.field public static final SCREENLAYOUT_SIZE_NORMAL:I = 0x2

.field public static final SCREENLAYOUT_SIZE_SMALL:I = 0x1

.field public static final SCREENLAYOUT_SIZE_UNDEFINED:I = 0x0

.field public static final SCREENLAYOUT_SIZE_XLARGE:I = 0x4

.field public static final SCREENLAYOUT_UNDEFINED:I = 0x0

.field public static final SCREEN_HEIGHT_DP_UNDEFINED:I = 0x0

.field public static final SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final SMALLEST_SCREEN_WIDTH_DP_UNDEFINED:I = 0x0

.field public static final TOUCHSCREEN_FINGER:I = 0x3

.field public static final TOUCHSCREEN_NOTOUCH:I = 0x1

.field public static final TOUCHSCREEN_STYLUS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOUCHSCREEN_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_MASK:I = 0x30

.field public static final UI_MODE_NIGHT_NO:I = 0x10

.field public static final UI_MODE_NIGHT_UNDEFINED:I = 0x0

.field public static final UI_MODE_NIGHT_YES:I = 0x20

.field public static final UI_MODE_TYPE_APPLIANCE:I = 0x5

.field public static final UI_MODE_TYPE_CAR:I = 0x3

.field public static final UI_MODE_TYPE_DESK:I = 0x2

.field public static final UI_MODE_TYPE_MASK:I = 0xf

.field public static final UI_MODE_TYPE_NORMAL:I = 0x1

.field public static final UI_MODE_TYPE_TELEVISION:I = 0x4

.field public static final UI_MODE_TYPE_UNDEFINED:I = 0x0

.field public static final UI_MODE_TYPE_WATCH:I = 0x6

.field private static final XML_ATTR_DENSITY:Ljava/lang/String; = "density"

.field private static final XML_ATTR_FONT_SCALE:Ljava/lang/String; = "fs"

.field private static final XML_ATTR_HARD_KEYBOARD_HIDDEN:Ljava/lang/String; = "hardKeyHid"

.field private static final XML_ATTR_KEYBOARD:Ljava/lang/String; = "key"

.field private static final XML_ATTR_KEYBOARD_HIDDEN:Ljava/lang/String; = "keyHid"

.field private static final XML_ATTR_LOCALES:Ljava/lang/String; = "locales"

.field private static final XML_ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final XML_ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final XML_ATTR_NAVIGATION:Ljava/lang/String; = "nav"

.field private static final XML_ATTR_NAVIGATION_HIDDEN:Ljava/lang/String; = "navHid"

.field private static final XML_ATTR_ORIENTATION:Ljava/lang/String; = "ori"

.field private static final XML_ATTR_SCREEN_HEIGHT:Ljava/lang/String; = "height"

.field private static final XML_ATTR_SCREEN_LAYOUT:Ljava/lang/String; = "scrLay"

.field private static final XML_ATTR_SCREEN_WIDTH:Ljava/lang/String; = "width"

.field private static final XML_ATTR_SMALLEST_WIDTH:Ljava/lang/String; = "sw"

.field private static final XML_ATTR_TOUCHSCREEN:Ljava/lang/String; = "touch"

.field private static final XML_ATTR_UI_MODE:Ljava/lang/String; = "ui"


# instance fields
.field public compatScreenHeightDp:I

.field public compatScreenWidthDp:I

.field public compatSmallestScreenWidthDp:I

.field public densityDpi:I

.field public fontScale:F

.field public hardKeyboardHidden:I

.field public keyboard:I

.field public keyboardHidden:I

.field public locale:Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mLocaleList:Landroid/os/LocaleList;

.field public mcc:I

.field public mnc:I

.field public navigation:I

.field public navigationHidden:I

.field public orientation:I

.field public screenHeightDp:I

.field public screenLayout:I

.field public screenWidthDp:I

.field public seq:I

.field public smallestScreenWidthDp:I

.field public touchscreen:I

.field public uiMode:I

.field public userSetLocale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration$1;

    invoke-direct {v0}, Landroid/content/res/Configuration$1;-><init>()V

    sput-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "o"    # Landroid/content/res/Configuration;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static configurationDiffToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "diff"    # I

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_0

    const-string v4, "CONFIG_MCC"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v4, p0, 0x2

    if-eqz v4, :cond_1

    const-string v4, "CONFIG_MNC"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v4, p0, 0x4

    if-eqz v4, :cond_2

    const-string v4, "CONFIG_LOCALE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v4, p0, 0x8

    if-eqz v4, :cond_3

    const-string v4, "CONFIG_TOUCHSCREEN"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v4, p0, 0x10

    if-eqz v4, :cond_4

    const-string v4, "CONFIG_KEYBOARD"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v4, p0, 0x20

    if-eqz v4, :cond_5

    const-string v4, "CONFIG_KEYBOARD_HIDDEN"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit8 v4, p0, 0x40

    if-eqz v4, :cond_6

    const-string v4, "CONFIG_NAVIGATION"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit16 v4, p0, 0x80

    if-eqz v4, :cond_7

    const-string v4, "CONFIG_ORIENTATION"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit16 v4, p0, 0x100

    if-eqz v4, :cond_8

    const-string v4, "CONFIG_SCREEN_LAYOUT"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit16 v4, p0, 0x200

    if-eqz v4, :cond_9

    const-string v4, "CONFIG_UI_MODE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    and-int/lit16 v4, p0, 0x400

    if-eqz v4, :cond_a

    const-string v4, "CONFIG_SCREEN_SIZE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    and-int/lit16 v4, p0, 0x800

    if-eqz v4, :cond_b

    const-string v4, "CONFIG_SMALLEST_SCREEN_SIZE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    and-int/lit16 v4, p0, 0x2000

    if-eqz v4, :cond_c

    const-string v4, "CONFIG_LAYOUT_DIRECTION"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, p0

    if-eqz v4, :cond_d

    const-string v4, "CONFIG_FONT_SCALE"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_f

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, -0x1

    if-eq v1, v4, :cond_e

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_f
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private fixUpLocaleList()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    goto :goto_1
.end method

.method public static generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 3
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "change"    # Landroid/content/res/Configuration;

    .prologue
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .local v0, "delta":Landroid/content/res/Configuration;
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_2

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v1, v0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_3
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_4

    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, v0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_4
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_5

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    :cond_5
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_6

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_6
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_7

    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, v0, Landroid/content/res/Configuration;->navigation:I

    :cond_7
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_8

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_8
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_9

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    :cond_9
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_a

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_b

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_b
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_c

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_c
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eq v1, v2, :cond_d

    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_d
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_e

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_e
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_f

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    :cond_f
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_10

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_10
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_11

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_12

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_12
    iget v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_13

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_13
    return-object v0
.end method

.method private static getScreenLayoutNoDirection(I)I
    .locals 1
    .param p0, "screenLayout"    # I

    .prologue
    and-int/lit16 v0, p0, -0xc1

    return v0
.end method

.method public static localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;
    .locals 10
    .param p0, "locs"    # Landroid/os/LocaleList;

    .prologue
    const/4 v9, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v1, v7, :cond_7

    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .local v3, "loc":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "l":I
    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "s":I
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "c":I
    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "v":I
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-ne v2, v9, :cond_4

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    if-ne v0, v9, :cond_4

    :cond_3
    if-nez v6, :cond_4

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v0, v9, :cond_0

    const-string v7, "-r"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v7, "b+"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    const-string v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz v0, :cond_6

    const-string v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v6, :cond_0

    const-string v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .end local v0    # "c":I
    .end local v2    # "l":I
    .end local v3    # "loc":Ljava/util/Locale;
    .end local v4    # "s":I
    .end local v6    # "v":I
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static needNewResources(II)Z
    .locals 2
    .param p0, "configChanges"    # I
    .param p1, "interestingChanges"    # I

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v1, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "configOut"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string v1, "fs"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->fontScale:F

    const-string v1, "mcc"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->mcc:I

    const-string v1, "mnc"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->mnc:I

    const-string v1, "locales"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "localesStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v1, "touch"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    const-string v1, "key"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->keyboard:I

    const-string v1, "keyHid"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    const-string v1, "hardKeyHid"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const-string v1, "nav"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->navigation:I

    const-string v1, "navHid"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    const-string v1, "ori"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "scrLay"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    const-string v1, "ui"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "width"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const-string v1, "height"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    const-string v1, "sw"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const-string v1, "density"

    invoke-static {p0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    return-void
.end method

.method public static reduceScreenLayout(III)I
    .locals 6
    .param p0, "curLayout"    # I
    .param p1, "longSizeDp"    # I
    .param p2, "shortSizeDp"    # I

    .prologue
    const/16 v4, 0x1d6

    if-ge p1, v4, :cond_3

    const/4 v3, 0x1

    .local v3, "screenLayoutSize":I
    const/4 v2, 0x0

    .local v2, "screenLayoutLong":Z
    const/4 v1, 0x0

    .local v1, "screenLayoutCompatNeeded":Z
    :goto_0
    if-nez v2, :cond_0

    and-int/lit8 v4, p0, -0x31

    or-int/lit8 p0, v4, 0x10

    :cond_0
    if-eqz v1, :cond_1

    const/high16 v4, 0x10000000

    or-int/2addr p0, v4

    :cond_1
    and-int/lit8 v0, p0, 0xf

    .local v0, "curSize":I
    if-ge v3, v0, :cond_2

    and-int/lit8 v4, p0, -0x10

    or-int p0, v4, v3

    :cond_2
    return p0

    .end local v0    # "curSize":I
    .end local v1    # "screenLayoutCompatNeeded":Z
    .end local v2    # "screenLayoutLong":Z
    .end local v3    # "screenLayoutSize":I
    :cond_3
    const/16 v4, 0x3c0

    if-lt p1, v4, :cond_5

    const/16 v4, 0x2d0

    if-lt p2, v4, :cond_5

    const/4 v3, 0x4

    .restart local v3    # "screenLayoutSize":I
    :goto_1
    const/16 v4, 0x141

    if-gt p2, v4, :cond_4

    const/16 v4, 0x23a

    if-le p1, v4, :cond_7

    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "screenLayoutCompatNeeded":Z
    :goto_2
    mul-int/lit8 v4, p1, 0x3

    div-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, p2, -0x1

    if-lt v4, v5, :cond_8

    const/4 v2, 0x1

    .restart local v2    # "screenLayoutLong":Z
    goto :goto_0

    .end local v1    # "screenLayoutCompatNeeded":Z
    .end local v2    # "screenLayoutLong":Z
    .end local v3    # "screenLayoutSize":I
    :cond_5
    const/16 v4, 0x280

    if-lt p1, v4, :cond_6

    const/16 v4, 0x1e0

    if-lt p2, v4, :cond_6

    const/4 v3, 0x3

    .restart local v3    # "screenLayoutSize":I
    goto :goto_1

    .end local v3    # "screenLayoutSize":I
    :cond_6
    const/4 v3, 0x2

    .restart local v3    # "screenLayoutSize":I
    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "screenLayoutCompatNeeded":Z
    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "screenLayoutLong":Z
    goto :goto_0
.end method

.method public static resetScreenLayout(I)I
    .locals 1
    .param p0, "curLayout"    # I

    .prologue
    const v0, -0x10000040

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x24

    return v0
.end method

.method public static resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 4
    .param p0, "config"    # Landroid/content/res/Configuration;

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-static {v2}, Landroid/content/res/Configuration;->localesToResourceQualifier(Landroid/os/LocaleList;)Ljava/lang/String;

    move-result-object v1

    .local v1, "resourceQualifier":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "resourceQualifier":Ljava/lang/String;
    :cond_1
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    sparse-switch v2, :sswitch_data_0

    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_1

    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    sparse-switch v2, :sswitch_data_2

    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_1

    :goto_4
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_2

    :goto_5
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_3

    :goto_6
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    sparse-switch v2, :sswitch_data_4

    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dpi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    :sswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_3

    :goto_9
    :pswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_4

    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_5

    :goto_b
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_6

    :goto_c
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_7

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "-"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_1
    const-string v2, "ldltr"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "ldrtl"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1
    const-string v2, "small"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_2
    const-string v2, "normal"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_3
    const-string v2, "large"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_4
    const-string v2, "xlarge"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "long"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "notlong"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "round"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_6
    const-string v2, "notround"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_5
    const-string v2, "land"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_6
    const-string v2, "port"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_7
    const-string v2, "appliance"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_8
    const-string v2, "desk"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_9
    const-string v2, "television"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_a
    const-string v2, "car"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :pswitch_b
    const-string v2, "watch"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :sswitch_7
    const-string v2, "night"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :sswitch_8
    const-string v2, "notnight"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :sswitch_9
    const-string v2, "ldpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_a
    const-string v2, "mdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_b
    const-string v2, "tvdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_c
    const-string v2, "hdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_d
    const-string v2, "xhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_e
    const-string v2, "xxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_f
    const-string v2, "xxxhdpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_10
    const-string v2, "anydpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :sswitch_11
    const-string v2, "nodpi"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :pswitch_c
    const-string v2, "notouch"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :pswitch_d
    const-string v2, "finger"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :pswitch_e
    const-string v2, "keysexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :pswitch_f
    const-string v2, "keyshidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :pswitch_10
    const-string v2, "keyssoft"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :pswitch_11
    const-string v2, "nokeys"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :pswitch_12
    const-string v2, "qwerty"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :pswitch_13
    const-string v2, "12key"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :pswitch_14
    const-string v2, "navexposed"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :pswitch_15
    const-string v2, "navhidden"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :pswitch_16
    const-string v2, "nonav"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :pswitch_17
    const-string v2, "dpad"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :pswitch_18
    const-string v2, "trackball"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :pswitch_19
    const-string v2, "wheel"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x100 -> :sswitch_6
        0x200 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_b
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_8
        0x20 -> :sswitch_7
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_0
        0x78 -> :sswitch_9
        0xa0 -> :sswitch_a
        0xd5 -> :sswitch_b
        0xf0 -> :sswitch_c
        0x140 -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x280 -> :sswitch_f
        0xfffe -> :sswitch_10
        0xffff -> :sswitch_11
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public static writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V
    .locals 2
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "fs"

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    iget v0, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v0, :cond_0

    const-string v0, "mcc"

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v0, :cond_1

    const-string v0, "mnc"

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_1
    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "locales"

    iget-object v1, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v0, :cond_3

    const-string v0, "touch"

    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_3
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v0, :cond_4

    const-string v0, "key"

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_4
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v0, :cond_5

    const-string v0, "keyHid"

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v0, :cond_6

    const-string v0, "hardKeyHid"

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_6
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v0, :cond_7

    const-string v0, "nav"

    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_7
    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v0, :cond_8

    const-string v0, "navHid"

    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_8
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v0, :cond_9

    const-string v0, "ori"

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_9
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eqz v0, :cond_a

    const-string v0, "scrLay"

    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_a
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v0, :cond_b

    const-string v0, "ui"

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_b
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v0, :cond_c

    const-string v0, "width"

    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v0, :cond_d

    const-string v0, "height"

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_d
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v0, :cond_e

    const-string v0, "sw"

    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_e
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v0, :cond_f

    const-string v0, "density"

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_f
    return-void
.end method


# virtual methods
.method public clearLocales()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-void
.end method

.method public compareTo(Landroid/content/res/Configuration;)I
    .locals 11
    .param p1, "that"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    iget v0, p0, Landroid/content/res/Configuration;->fontScale:F

    .local v0, "a":F
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    .local v1, "b":F
    cmpg-float v7, v0, v1

    if-gez v7, :cond_0

    return v9

    :cond_0
    cmpl-float v7, v0, v1

    if-lez v7, :cond_1

    return v10

    :cond_1
    iget v7, p0, Landroid/content/res/Configuration;->mcc:I

    iget v8, p1, Landroid/content/res/Configuration;->mcc:I

    sub-int v4, v7, v8

    .local v4, "n":I
    if-eqz v4, :cond_2

    return v4

    :cond_2
    iget v7, p0, Landroid/content/res/Configuration;->mnc:I

    iget v8, p1, Landroid/content/res/Configuration;->mnc:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_3

    return v4

    :cond_3
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    return v10

    :cond_4
    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    return v9

    :cond_5
    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    iget-object v8, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v8}, Landroid/os/LocaleList;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "minSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_a

    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    .local v6, "thisLocale":Ljava/util/Locale;
    iget-object v7, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    .local v5, "thatLocale":Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    return v4

    :cond_6
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    return v4

    :cond_7
    invoke-virtual {v6}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_8

    return v4

    :cond_8
    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9

    return v4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v5    # "thatLocale":Ljava/util/Locale;
    .end local v6    # "thisLocale":Ljava/util/Locale;
    :cond_a
    iget-object v7, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    iget-object v8, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v8}, Landroid/os/LocaleList;->size()I

    move-result v8

    sub-int v4, v7, v8

    if-eqz v4, :cond_b

    return v4

    .end local v2    # "i":I
    .end local v3    # "minSize":I
    :cond_b
    iget v7, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v8, p1, Landroid/content/res/Configuration;->touchscreen:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_c

    return v4

    :cond_c
    iget v7, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v8, p1, Landroid/content/res/Configuration;->keyboard:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_d

    return v4

    :cond_d
    iget v7, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v8, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_e

    return v4

    :cond_e
    iget v7, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v8, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_f

    return v4

    :cond_f
    iget v7, p0, Landroid/content/res/Configuration;->navigation:I

    iget v8, p1, Landroid/content/res/Configuration;->navigation:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_10

    return v4

    :cond_10
    iget v7, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v8, p1, Landroid/content/res/Configuration;->navigationHidden:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_11

    return v4

    :cond_11
    iget v7, p0, Landroid/content/res/Configuration;->orientation:I

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_12

    return v4

    :cond_12
    iget v7, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v8, p1, Landroid/content/res/Configuration;->screenLayout:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_13

    return v4

    :cond_13
    iget v7, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v8, p1, Landroid/content/res/Configuration;->uiMode:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_14

    return v4

    :cond_14
    iget v7, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v8, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_15

    return v4

    :cond_15
    iget v7, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v8, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_16

    return v4

    :cond_16
    iget v7, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v8, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sub-int v4, v7, v8

    if-eqz v4, :cond_17

    return v4

    :cond_17
    iget v7, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v8, p1, Landroid/content/res/Configuration;->densityDpi:I

    sub-int v4, v7, v8

    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/content/res/Configuration;)I
    .locals 4
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x0

    .local v0, "changed":I
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_3
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v2, 0xc0

    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_4

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_4

    or-int/lit16 v0, v0, 0x2000

    :cond_4
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_5

    or-int/lit8 v0, v0, 0x8

    :cond_5
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_6

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_6

    or-int/lit8 v0, v0, 0x10

    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_7

    or-int/lit8 v0, v0, 0x20

    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_8

    or-int/lit8 v0, v0, 0x20

    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_9

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_9

    or-int/lit8 v0, v0, 0x40

    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_a

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_a

    or-int/lit8 v0, v0, 0x20

    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_b

    or-int/lit16 v0, v0, 0x80

    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v2, v3, :cond_c

    or-int/lit16 v0, v0, 0x100

    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_d

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v3, :cond_d

    or-int/lit16 v0, v0, 0x200

    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_e

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_e

    or-int/lit16 v0, v0, 0x400

    :cond_e
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_f

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_f

    or-int/lit16 v0, v0, 0x400

    :cond_f
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_10

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_10

    or-int/lit16 v0, v0, 0x800

    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_11

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_11

    or-int/lit16 v0, v0, 0x1000

    :cond_11
    return v0

    .end local v1    # "deltaScreenLayoutDir":I
    :cond_12
    or-int/lit8 v0, v0, 0x4

    or-int/lit16 v0, v0, 0x2000

    goto/16 :goto_0
.end method

.method public equals(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p1, "that"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->compareTo(Landroid/content/res/Configuration;)I

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    :try_start_0
    check-cast p1, Landroid/content/res/Configuration;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    return v1
.end method

.method public getLayoutDirection()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    add-int v0, v1, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    add-int v0, v1, v2

    return v0
.end method

.method public isLayoutSizeAtLeast(I)Z
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v2, 0xf

    .local v0, "cur":I
    if-nez v0, :cond_0

    return v1

    :cond_0
    if-lt v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isOtherSeqNewer(Landroid/content/res/Configuration;)Z
    .locals 5
    .param p1, "other"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    if-nez v3, :cond_1

    return v1

    :cond_1
    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    if-nez v3, :cond_2

    return v1

    :cond_2
    iget v3, p1, Landroid/content/res/Configuration;->seq:I

    iget v4, p0, Landroid/content/res/Configuration;->seq:I

    sub-int v0, v3, v4

    .local v0, "diff":I
    const/high16 v3, 0x10000

    if-le v0, v3, :cond_3

    return v2

    :cond_3
    if-lez v0, :cond_4

    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public isScreenRound()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, 0x300

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/res/Configuration;->setToDefaults()V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "localeListSize":I
    new-array v1, v2, [Ljava/util/Locale;

    .local v1, "localeArray":[Ljava/util/Locale;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    aput-object v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Landroid/os/LocaleList;

    invoke-direct {v5, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v5, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v5, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v5, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    iput-object v5, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v3, :cond_1

    :goto_1
    iput-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/content/res/Configuration;->seq:I

    return-void

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public setLayoutDirection(Ljava/util/Locale;)V
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .local v0, "layoutDirection":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, -0xc1

    shl-int/lit8 v2, v0, 0x6

    or-int/2addr v1, v2

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public setLocales(Landroid/os/LocaleList;)V
    .locals 2
    .param p1, "locales"    # Landroid/os/LocaleList;

    .prologue
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p1

    .end local p1    # "locales":Landroid/os/LocaleList;
    :cond_0
    iput-object p1, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    return-void
.end method

.method public setTo(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "o"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v0, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-boolean v0, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    iput-boolean v0, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v0, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    iput v0, p0, Landroid/content/res/Configuration;->navigation:I

    iget v0, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v0, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/content/res/Configuration;->orientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    iput v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v0, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v0, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, p0, Landroid/content/res/Configuration;->seq:I

    return-void

    :cond_0
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    goto :goto_0
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/res/Configuration;->fontScale:F

    iput v1, p0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-boolean v1, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    iput v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iput v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->navigation:I

    iput v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, p0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, p0, Landroid/content/res/Configuration;->uiMode:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, p0, Landroid/content/res/Configuration;->densityDpi:I

    iput v1, p0, Landroid/content/res/Configuration;->seq:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v2, 0xc0

    .local v0, "layoutDir":I
    sparse-switch v0, :sswitch_data_0

    const-string v2, " layoutDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, v0, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_4

    const-string v2, " sw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_5

    const-string v2, " w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_6

    const-string v2, " h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_7

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_0

    const-string v2, " layoutSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_8
    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_1

    const-string v2, " layoutLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_9
    :sswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v2, :pswitch_data_1

    const-string v2, " orien="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_a
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_2

    const-string v2, " uimode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_b
    :pswitch_0
    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    sparse-switch v2, :sswitch_data_2

    const-string v2, " night="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_c
    :sswitch_1
    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    packed-switch v2, :pswitch_data_3

    const-string v2, " touch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_d
    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    packed-switch v2, :pswitch_data_4

    const-string v2, " keys="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_e
    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    packed-switch v2, :pswitch_data_5

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_f
    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    packed-switch v2, :pswitch_data_6

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_10
    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    packed-switch v2, :pswitch_data_7

    const-string v2, " nav="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_11
    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    packed-switch v2, :pswitch_data_8

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_12
    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_0

    const-string v2, " s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "layoutDir":I
    :cond_1
    const-string v2, "?mcc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    const-string v2, "?mnc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    const-string v2, " ?localeList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .restart local v0    # "layoutDir":I
    :sswitch_2
    const-string v2, " ?layoutDir"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :sswitch_3
    const-string v2, " ldltr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :sswitch_4
    const-string v2, " ldrtl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_4
    const-string v2, " ?swdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_5
    const-string v2, " ?wdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_6
    const-string v2, " ?hdp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_7
    const-string v2, " ?density"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_1
    const-string v2, " ?lsize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :pswitch_2
    const-string v2, " smll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :pswitch_3
    const-string v2, " nrml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :pswitch_4
    const-string v2, " lrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :pswitch_5
    const-string v2, " xlrg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :sswitch_5
    const-string v2, " ?long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :sswitch_6
    const-string v2, " long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :pswitch_6
    const-string v2, " ?orien"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :pswitch_7
    const-string v2, " land"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :pswitch_8
    const-string v2, " port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :pswitch_9
    const-string v2, " ?uimode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :pswitch_a
    const-string v2, " desk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :pswitch_b
    const-string v2, " car"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :pswitch_c
    const-string v2, " television"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :pswitch_d
    const-string v2, " appliance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :pswitch_e
    const-string v2, " watch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :sswitch_7
    const-string v2, " ?night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :sswitch_8
    const-string v2, " night"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_f
    const-string v2, " ?touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_10
    const-string v2, " -touch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_11
    const-string v2, " stylus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_12
    const-string v2, " finger"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :pswitch_13
    const-string v2, " ?keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :pswitch_14
    const-string v2, " -keyb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :pswitch_15
    const-string v2, " qwerty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :pswitch_16
    const-string v2, " 12key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    :pswitch_17
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :pswitch_18
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :pswitch_19
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :pswitch_1a
    const-string v2, "/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    :pswitch_1b
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_1c
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_1d
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    :pswitch_1e
    const-string v2, " ?nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    :pswitch_1f
    const-string v2, " -nav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    :pswitch_20
    const-string v2, " dpad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    :pswitch_21
    const-string v2, " tball"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    :pswitch_22
    const-string v2, " wheel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    :pswitch_23
    const-string v2, "/?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    :pswitch_24
    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    :pswitch_25
    const-string v2, "/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x10 -> :sswitch_0
        0x20 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x10 -> :sswitch_1
        0x20 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method public updateFrom(Landroid/content/res/Configuration;)I
    .locals 4
    .param p1, "delta"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x0

    .local v0, "changed":I
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Landroid/content/res/Configuration;->fontScale:F

    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/content/res/Configuration;->mcc:I

    iget v3, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v2, v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    iput v2, p0, Landroid/content/res/Configuration;->mcc:I

    :cond_1
    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/content/res/Configuration;->mnc:I

    iget v3, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v2, v3, :cond_2

    or-int/lit8 v0, v0, 0x2

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    iput v2, p0, Landroid/content/res/Configuration;->mnc:I

    :cond_2
    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    invoke-direct {p1}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v3, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_3
    :goto_0
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v2, 0xc0

    .local v1, "deltaScreenLayoutDir":I
    if-eqz v1, :cond_4

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_4

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, -0xc1

    or-int/2addr v2, v1

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    or-int/lit16 v0, v0, 0x2000

    :cond_4
    iget-boolean v2, p1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v2, :cond_5

    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_6

    :cond_5
    or-int/lit8 v0, v0, 0x4

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eqz v2, :cond_7

    iget v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v3, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v2, v3, :cond_7

    or-int/lit8 v0, v0, 0x8

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v2, p0, Landroid/content/res/Configuration;->touchscreen:I

    :cond_7
    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v2, :cond_8

    iget v2, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v3, :cond_8

    or-int/lit8 v0, v0, 0x10

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboard:I

    :cond_8
    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eqz v2, :cond_9

    iget v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v2, v3, :cond_9

    or-int/lit8 v0, v0, 0x20

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_9
    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eqz v2, :cond_a

    iget v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_a

    or-int/lit8 v0, v0, 0x20

    iget v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    :cond_a
    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eqz v2, :cond_b

    iget v2, p0, Landroid/content/res/Configuration;->navigation:I

    iget v3, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v2, v3, :cond_b

    or-int/lit8 v0, v0, 0x40

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    iput v2, p0, Landroid/content/res/Configuration;->navigation:I

    :cond_b
    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eqz v2, :cond_c

    iget v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v2, v3, :cond_c

    or-int/lit8 v0, v0, 0x20

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v2, p0, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_c
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v2, :cond_d

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_d

    or-int/lit16 v0, v0, 0x80

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Landroid/content/res/Configuration;->orientation:I

    :cond_d
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    if-eqz v2, :cond_e

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v2}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v2

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v3}, Landroid/content/res/Configuration;->getScreenLayoutNoDirection(I)I

    move-result v3

    if-eq v2, v3, :cond_e

    or-int/lit16 v0, v0, 0x100

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-nez v2, :cond_1a

    iget v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    iget v3, p1, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    :cond_e
    :goto_1
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eqz v2, :cond_10

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v2, v3, :cond_10

    or-int/lit16 v0, v0, 0x200

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_f

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x10

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_f
    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eqz v2, :cond_10

    iget v2, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, -0x31

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/res/Configuration;->uiMode:I

    :cond_10
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v2, :cond_11

    iget v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v3, :cond_11

    or-int/lit16 v0, v0, 0x400

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    :cond_11
    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v2, :cond_12

    iget v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v3, :cond_12

    or-int/lit16 v0, v0, 0x400

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    :cond_12
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eqz v2, :cond_13

    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v3, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v3, :cond_13

    or-int/lit16 v0, v0, 0x800

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    :cond_13
    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_14

    iget v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v3, :cond_14

    or-int/lit16 v0, v0, 0x1000

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Landroid/content/res/Configuration;->densityDpi:I

    :cond_14
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    if-eqz v2, :cond_15

    iget v2, p1, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    :cond_15
    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    if-eqz v2, :cond_16

    iget v2, p1, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    :cond_16
    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    if-eqz v2, :cond_17

    iget v2, p1, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iput v2, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    :cond_17
    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    if-eqz v2, :cond_18

    iget v2, p1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Landroid/content/res/Configuration;->seq:I

    :cond_18
    return v0

    .end local v1    # "deltaScreenLayoutDir":I
    :cond_19
    or-int/lit8 v0, v0, 0x4

    iget-object v2, p1, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iput-object v2, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v3, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    iput-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    or-int/lit16 v0, v0, 0x2000

    iget-object v2, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto/16 :goto_0

    .restart local v1    # "deltaScreenLayoutDir":I
    :cond_1a
    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v2, p0, Landroid/content/res/Configuration;->screenLayout:I

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v3, p0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    iget v3, p0, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->mnc:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0}, Landroid/content/res/Configuration;->fixUpLocaleList()V

    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v2

    .local v2, "localeListSize":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/content/res/Configuration;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {v3, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .local v1, "l":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "l":Ljava/util/Locale;
    :cond_0
    iget-boolean v3, p0, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget v3, p0, Landroid/content/res/Configuration;->touchscreen:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->screenLayout:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget v3, p0, Landroid/content/res/Configuration;->seq:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
