.class Lcom/android/phone/settings/CallAdvancedSetting$3;
.super Ljava/lang/Object;
.source "CallAdvancedSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/CallAdvancedSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/CallAdvancedSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/CallAdvancedSetting;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/phone/settings/CallAdvancedSetting$3;->this$0:Lcom/android/phone/settings/CallAdvancedSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 511
    iget-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting$3;->this$0:Lcom/android/phone/settings/CallAdvancedSetting;

    # getter for: Lcom/android/phone/settings/CallAdvancedSetting;->mCdmaDisplayPreciseCallState:Lcom/android/phone/settings/CheckBoxTitleIconPreference;
    invoke-static {v0}, Lcom/android/phone/settings/CallAdvancedSetting;->access$400(Lcom/android/phone/settings/CallAdvancedSetting;)Lcom/android/phone/settings/CheckBoxTitleIconPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/settings/CheckBoxTitleIconPreference;->setChecked(Z)V

    .line 512
    iget-object v0, p0, Lcom/android/phone/settings/CallAdvancedSetting$3;->this$0:Lcom/android/phone/settings/CallAdvancedSetting;

    invoke-virtual {v0}, Lcom/android/phone/settings/CallAdvancedSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cdma_precise_answer_state"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 515
    return-void
.end method