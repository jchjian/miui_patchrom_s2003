.class public Lcom/android/settings/AdvancedSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mQuickStart:Landroid/preference/CheckBoxPreference;

.field private mScreenAnimationStyle:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f060097

    invoke-virtual {p0, v0}, Lcom/android/settings/AdvancedSettings;->addPreferencesFromResource(I)V

    const-string v1, "toggle_quickstart"

    invoke-virtual {p0, v1}, Lcom/android/settings/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/AdvancedSettings;->mQuickStart:Landroid/preference/CheckBoxPreference;

    const-string v1, "screen_animation_style"

    invoke-virtual {p0, v1}, Lcom/android/settings/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/AdvancedSettings;->mScreenAnimationStyle:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/AdvancedSettings;->mScreenAnimationStyle:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.mipop"

    invoke-static {v0, v1}, Lcom/android/settings/ZteSettingsUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "mi_pop"

    invoke-virtual {p0, v1}, Lcom/android/settings/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "glove_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.zte.android.kidsmode"

    invoke-static {v0, v1}, Lcom/android/settings/ZteSettingsUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "kids_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 114
    :cond_6
    invoke-static {}, Lcom/zte/config/zteConfig;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P898S10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/AdvancedSettings;->mScreenAnimationStyle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_animation_style"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 130
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "toggle_voicewakeup"

    invoke-virtual {p0, v1}, Lcom/android/settings/AdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/AdvancedSettings;->mQuickStart:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "quickbootkey"

    const-string v3, "set to 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "1"

    :goto_0
    const-string v2, "persist.sys.quickboot"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    const-string v2, "quickbootkey"

    const-string v3, "set to 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "0"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/AdvancedSettings;->mScreenAnimationStyle:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/AdvancedSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_animation_style"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v1, "persist.sys.quickboot"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v2, "quickbootkey"

    const-string v3, "is 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/settings/AdvancedSettings;->mQuickStart:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 42
    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v2, "quickbootkey"

    const-string v3, "is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
