.class public final Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;
.super Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;
.source "KeyboardPanelApp.java"

# interfaces
.implements Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;


# static fields
.field private static final MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static final POPUP_LAYER:Ljava/lang/String; = "popup"

.field private static final POPUP_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

.field private static TAG:Ljava/lang/String; = "KeyboardPanelApp"


# instance fields
.field private final BACKSPACE_KEY_SOUND_FILE_PATH:Ljava/lang/String;

.field private final HOVER_SOUND_FILE_PATH:Ljava/lang/String;

.field private final LAYOUT_KEY_SOUND_FILE_PATH:Ljava/lang/String;

.field private final PRESS_SOUND_FILE_PATH:Ljava/lang/String;

.field private final TRANSCRIPTION_KEY_SOUND_FILE_PATH:Ljava/lang/String;

.field private isMainKeyboardEnvSet:Z

.field private mAllowBluetoothKeyboard:Z

.field private mAllowImeComposition:Z

.field private mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

.field private mCurrentInputType:Lcom/oculus/panelapp/keyboardv2/InputType;

.field private mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

.field private mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

.field private mDefaultLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

.field private mKeyboardTranscription:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;

.field private mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

.field private mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

.field private mPopupResId:I

.field private mPopupView:Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;

.field private mRemoteKeyboardDisabled:Z

.field private mUiLanguage:Ljava/lang/String;

.field private remoteInputTooltipShownOnHover:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 725
    new-instance v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v4, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v6, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v7, Lcom/oculus/panelapp/keyboardv2/R$style;->KeyboardPanelTheme:I

    const-string v1, "#main"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v8, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    .line 734
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    sget-object v13, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v14, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v15, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->LandscapeCylinder:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    sget v16, Lcom/oculus/panelapp/keyboardv2/R$style;->KeyboardPanelTheme:I

    const-string v10, "popup"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;-><init>(Ljava/lang/String;IILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;I)V

    sput-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->POPUP_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroid/content/Context;",
            "Landroid/view/Surface;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;-><init>(Landroid/app/Application;Landroid/content/Context;Landroid/view/Surface;Ljava/util/Map;Landroid/os/Bundle;)V

    const-string p1, "apk:///assets/press.ogg"

    .line 26
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->PRESS_SOUND_FILE_PATH:Ljava/lang/String;

    const-string p1, "apk:///assets/hover.ogg"

    .line 27
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->HOVER_SOUND_FILE_PATH:Ljava/lang/String;

    const-string p1, "apk:///assets/backspace.ogg"

    .line 28
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->BACKSPACE_KEY_SOUND_FILE_PATH:Ljava/lang/String;

    const-string p1, "apk:///assets/transcribe_ding.ogg"

    .line 29
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->TRANSCRIPTION_KEY_SOUND_FILE_PATH:Ljava/lang/String;

    const-string p1, "apk:///assets/layout.ogg"

    .line 30
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->LAYOUT_KEY_SOUND_FILE_PATH:Ljava/lang/String;

    const/4 p1, 0x0

    .line 743
    iput-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isMainKeyboardEnvSet:Z

    .line 755
    sget-object p2, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mDefaultLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 759
    sget-object p2, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 760
    sget-object p2, Lcom/oculus/panelapp/keyboardv2/InputType;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/InputType;

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentInputType:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 761
    sget-object p2, Lcom/oculus/panelapp/keyboardv2/ActionType;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/ActionType;

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    .line 762
    iput-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mRemoteKeyboardDisabled:Z

    .line 763
    sget-object p2, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->LARGE:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    .line 766
    iput-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->remoteInputTooltipShownOnHover:Z

    .line 39
    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getUserKeyboardSize()Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    const-string p2, "AllowImeComposition"

    .line 41
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "true"

    if-eqz p3, :cond_0

    .line 42
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mAllowImeComposition:Z

    const-string p2, "_oc_gk:oculus_vrshell_keyboard_bluetooth"

    .line 47
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mAllowBluetoothKeyboard:Z

    const-string p2, "Language"

    .line 49
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p5, ""

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p5

    :goto_1
    invoke-direct {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->parseLocale(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    const-string p2, "InputType"

    .line 52
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, p5

    .line 51
    :goto_2
    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/InputType;->getInputType(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/InputType;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentInputType:Lcom/oculus/panelapp/keyboardv2/InputType;

    const-string p2, "ActionType"

    .line 55
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    move-object p2, p5

    .line 54
    :goto_3
    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/ActionType;->getActionType(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/ActionType;

    move-result-object p2

    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    const-string p2, "RemoteKeyboardDisabled"

    .line 57
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 58
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    :cond_4
    iput-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mRemoteKeyboardDisabled:Z

    .line 59
    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getUserLocale()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->setUILanguage(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getNativePointer()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mAllowImeComposition:Z

    iget-boolean v4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mAllowBluetoothKeyboard:Z

    const-string p1, "Cookie"

    .line 64
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getEnvironmentArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_5
    move-object v5, p5

    move-object v0, p0

    .line 60
    invoke-direct/range {v0 .. v5}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->nativeSetEnvironment(JZZLjava/lang/String;)V

    return-void
.end method

.method private getUserKeyboardSize()Lcom/oculus/panelapp/keyboardv2/KeyboardSize;
    .locals 3

    .line 470
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyboard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "keyboard_size"

    const/4 v2, 0x0

    .line 471
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 473
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->LARGE:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->setUserKeyboardSize(Lcom/oculus/panelapp/keyboardv2/KeyboardSize;)V

    .line 474
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->LARGE:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    return-object v0

    .line 477
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 479
    :catch_0
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->LARGE:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->setUserKeyboardSize(Lcom/oculus/panelapp/keyboardv2/KeyboardSize;)V

    .line 480
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->LARGE:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    return-object v0
.end method

.method private getUserLocale()Ljava/lang/String;
    .locals 6

    .line 443
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyboard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "default_locale"

    .line 444
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "user_locale"

    .line 445
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 447
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    .line 450
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 451
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 452
    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 453
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v5
.end method

.method private handleCommand(Ljava/lang/String;Lcom/oculus/panelapp/keyboardv2/KeyCode;Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
    .locals 9

    .line 190
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$KeyCode:[I

    invoke-virtual {p2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "apk:///assets/press.ogg"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "audioPlay %s"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 208
    :pswitch_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getNativePointer()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const-string v7, "Command"

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v8}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->nativeOnAction(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 213
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/keyboardv2/R$string;->keyboard_remote_input_key_click_tooltip:I

    .line 215
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {p0, p3, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->showTooltip(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;Ljava/lang/String;)V

    return-void

    .line 219
    :pswitch_1
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "apk:///assets/transcribe_ding.ogg"

    aput-object p2, p1, v2

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mKeyboardTranscription:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;

    if-nez p1, :cond_0

    .line 221
    new-instance p1, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;

    invoke-direct {p1, p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;-><init>(Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mKeyboardTranscription:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mKeyboardTranscription:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->startTranscription()V

    goto :goto_0

    .line 192
    :pswitch_2
    new-array p3, v3, [Ljava/lang/Object;

    const-string v0, "apk:///assets/backspace.ogg"

    aput-object v0, p3, v2

    invoke-static {v4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getNativePointer()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v6, "Command"

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->nativeOnAction(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 202
    :pswitch_3
    new-array p3, v3, [Ljava/lang/Object;

    aput-object v1, p3, v2

    invoke-static {v4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getNativePointer()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v6, "Command"

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->nativeOnAction(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideTooltip()V
    .locals 1

    .line 525
    iget-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->remoteInputTooltipShownOnHover:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->actionHideSystemTooltip()V

    :cond_0
    return-void
.end method

.method private native nativeCreateInstance(JJ)J
.end method

.method private native nativeSetEnvironment(JZZLjava/lang/String;)V
.end method

.method private parseLocale(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;
    .locals 3

    .line 433
    invoke-static {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->getKnownLanguages(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    move-result-object v0

    .line 434
    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    if-ne v0, v1, :cond_0

    .line 435
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mDefaultLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    :cond_0
    return-object v0
.end method

.method private returnToCurrentLanguage()V
    .locals 10

    .line 659
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getKeyboardLayoutResourceId()I

    move-result v9

    .line 660
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    const-string v1, "#main"

    .line 661
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getPresentationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    iget-object v4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    iget-object v5, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    .line 668
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isRemoteInputEnabled()Z

    move-result v8

    const/4 v7, -0x1

    move v2, v9

    move-object v6, p0

    .line 660
    invoke-virtual/range {v0 .. v8}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->setKeyboard(Landroid/content/Context;ILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;IZ)V

    const/4 v0, 0x1

    .line 670
    new-array v0, v0, [Ljava/lang/Object;

    .line 673
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "telemetry oculus_keyboard_layout 1 0 layout %s"

    .line 671
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    return-void
.end method

.method private setUILanguage(Ljava/lang/String;)V
    .locals 3

    .line 412
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mUiLanguage:Ljava/lang/String;

    .line 413
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mUiLanguage:Ljava/lang/String;

    invoke-static {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->getKnownLanguages(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mDefaultLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 419
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mDefaultLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->KO_KR:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mAllowImeComposition:Z

    if-nez p1, :cond_0

    .line 420
    sget-object p1, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->TAG:Ljava/lang/String;

    const-string v0, "Disallowing Korean Language as default language - Selecting EN_US"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    sget-object p1, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->EN_US:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mDefaultLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    goto :goto_0

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mDefaultLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    if-ne p1, v0, :cond_1

    .line 423
    sget-object p1, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mUiLanguage:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Unknown UI Language %s - Selecting EN_US"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget-object p1, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->EN_US:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mDefaultLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    :cond_1
    :goto_0
    return-void
.end method

.method private setUserKeyboardSize(Lcom/oculus/panelapp/keyboardv2/KeyboardSize;)V
    .locals 3

    .line 486
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    .line 488
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyboard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 489
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 490
    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "keyboard_size"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 491
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setUserLocale(Ljava/lang/String;)V
    .locals 3

    .line 462
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyboard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_locale"

    .line 464
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method protected commitTextInput(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 163
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isTranscriptionTextVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getTranscriptionEditText()Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->updateTranscriptionText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getNativePointer()J

    move-result-wide v1

    const-string v5, "None"

    const-string v6, "Text"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->nativeOnAction(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected createNativeInstance()J
    .locals 4

    .line 69
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v0, v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->width:I

    int-to-long v0, v0

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    iget v2, v2, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;->height:I

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->nativeCreateInstance(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected createViewForLayer(Ljava/lang/String;ILandroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 89
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inflating view for viewIdentifier = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x2203c5c

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    const v0, 0x65e70ac

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "popup"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "#main"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-ne p2, v1, :cond_3

    .line 109
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/keyboardv2/R$layout;->keyboard_popup_view:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupView:Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;

    .line 111
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupView:Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;

    return-object p1

    .line 114
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown layerName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 94
    :cond_4
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    if-nez p1, :cond_5

    .line 100
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/oculus/panelapp/keyboardv2/R$layout;->keyboard_panel_view:I

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    .line 101
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {p1, p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->initialize(Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;)V

    .line 103
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    return-object p1

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "trying to recreate main layer!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getKeyboardLayoutResourceId()I
    .locals 4

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$InputType:[I

    iget-object v2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentInputType:Lcom/oculus/panelapp/keyboardv2/InputType;

    invoke-virtual {v2}, Lcom/oculus/panelapp/keyboardv2/InputType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "xml"

    const-string v3, "_"

    packed-switch v1, :pswitch_data_0

    .line 349
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentInputType:Lcom/oculus/panelapp/keyboardv2/InputType;

    invoke-virtual {v2}, Lcom/oculus/panelapp/keyboardv2/InputType;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Unknown type: %i"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 340
    :pswitch_0
    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentInputType:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 341
    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/InputType;->toString(Lcom/oculus/panelapp/keyboardv2/InputType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    .line 343
    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->getSizeSuffix(Lcom/oculus/panelapp/keyboardv2/KeyboardSize;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 346
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 321
    :pswitch_1
    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 322
    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentInputType:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 324
    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/InputType;->toString(Lcom/oculus/panelapp/keyboardv2/InputType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isTranscriptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 327
    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "en_us"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    sget-object v3, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->LARGE:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    if-ne v1, v3, :cond_0

    const-string v1, "transcription_"

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->getSizeSuffix(Lcom/oculus/panelapp/keyboardv2/KeyboardSize;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 333
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getLayerSpec(Ljava/lang/String;I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;
    .locals 2

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x2203c5c

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    const v0, 0x65e70ac

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "popup"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const-string p2, "#main"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_4

    if-ne p2, v1, :cond_3

    .line 78
    sget-object p1, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->POPUP_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-object p1

    .line 80
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown layerName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 76
    :cond_4
    sget-object p1, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->MAIN_LAYER_SPEC:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Spec;

    return-object p1
.end method

.method protected getRequiresActivityToken()Z
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isStandaloneVr()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hidePopupLayer()V
    .locals 2

    .line 495
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupResId:I

    if-eqz v0, :cond_0

    const-string v0, "popup"

    .line 496
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->hideLayer(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 497
    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupResId:I

    .line 498
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->onReleased(Z)V

    .line 499
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    invoke-virtual {v0, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->invalidateKey(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    :cond_0
    return-void
.end method

.method public initializeKeyboard()V
    .locals 4

    const-string v0, "#main"

    .line 356
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    .line 355
    invoke-virtual {p0, v0, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->attachResizeLayoutListener(Lcom/oculus/vrshell/panels/AndroidPanelLayer;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;)V

    .line 357
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 358
    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    .line 359
    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/ActionType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentInputType:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 360
    invoke-virtual {v2}, Lcom/oculus/panelapp/keyboardv2/InputType;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 357
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->setEnvironment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x3

    .line 362
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mUiLanguage:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mDefaultLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 365
    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "telemetry oculus_keyboard_language 1 0 ui_language %s default_language %s keyboard_language %s"

    .line 363
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    return-void
.end method

.method protected isRemoteInputEnabled()Z
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->GEARVR:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mRemoteKeyboardDisabled:Z

    if-nez v0, :cond_1

    const-string v0, "remote_input"

    .line 174
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isFeatureFlagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_KEYBOARD_REMOTE_INPUT:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 175
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isGKEnabled(Lcom/oculus/common/gatekeepers/Gatekeeper;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTranscriptionEnabled()Z
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getDeviceType()Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    move-result-object v0

    sget-object v1, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->GEARVR:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-eq v0, v1, :cond_0

    const-string v0, "transcription"

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isFeatureFlagEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTranscriptionTextVisible()Z
    .locals 2

    .line 183
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isTranscriptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    .line 184
    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getMainKeyboard()Lcom/oculus/panelapp/keyboardv2/Keyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    .line 185
    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getMainKeyboard()Lcom/oculus/panelapp/keyboardv2/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getLayoutResId()I

    move-result v0

    sget v1, Lcom/oculus/panelapp/keyboardv2/R$xml;->en_us_text_default_transcription_48:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    .line 186
    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getTranscriptionEditText()Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native nativeOnAction(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public nextFrameAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 559
    invoke-super {p0, p1, p2}, Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;->nextFrameAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v3, -0x6335ec12

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "layerShow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto/16 :goto_9

    :cond_2
    const-string p1, "popup"

    .line 564
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 567
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupView:Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->getRowCount()I

    move-result p1

    .line 568
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupView:Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;

    invoke-virtual {p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->getColumnCount()I

    move-result p2

    .line 569
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 570
    iget-object v3, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {v3}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne p1, v6, :cond_3

    .line 574
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    div-int/2addr p1, v7

    goto :goto_4

    :cond_3
    if-ne p1, v7, :cond_5

    .line 576
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    int-to-float p1, p1

    div-float v8, v3, v4

    cmpg-float p1, p1, v8

    if-gez p1, :cond_4

    .line 577
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    iget-object v8, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v8, v8, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    div-int/2addr v8, v7

    :goto_2
    add-int/2addr p1, v8

    goto :goto_4

    .line 579
    :cond_4
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    mul-int/lit8 p1, p1, -0x1

    div-int/2addr p1, v7

    goto :goto_4

    :cond_5
    if-ne p1, v5, :cond_9

    .line 583
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    if-ne p1, v6, :cond_6

    goto :goto_3

    .line 586
    :cond_6
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    int-to-float p1, p1

    iget-object v8, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v8, v8, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    int-to-float v8, v8

    sub-float v8, v3, v8

    cmpl-float p1, p1, v8

    if-nez p1, :cond_7

    .line 587
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    mul-int/lit8 p1, p1, -0x1

    iget-object v8, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v8, v8, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    div-int/2addr v8, v7

    sub-int/2addr p1, v8

    goto :goto_4

    .line 589
    :cond_7
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    div-int/2addr p1, v7

    goto :goto_4

    .line 584
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    iget-object v8, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v8, v8, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    add-int/2addr p1, v8

    iget-object v8, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v8, v8, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    div-int/2addr v8, v7

    goto :goto_2

    :cond_9
    const/4 p1, 0x0

    :goto_4
    if-ne p2, v7, :cond_b

    .line 594
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    int-to-float p2, p2

    div-float v4, v0, v4

    cmpg-float p2, p2, v4

    if-gez p2, :cond_a

    .line 595
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v1, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    div-int/2addr v1, v7

    :goto_5
    add-int/2addr p2, v1

    goto :goto_7

    .line 597
    :cond_a
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    mul-int/lit8 p2, p2, -0x1

    div-int/2addr p2, v7

    goto :goto_7

    :cond_b
    if-ne p2, v5, :cond_f

    .line 601
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    if-ne p2, v6, :cond_c

    goto :goto_6

    .line 604
    :cond_c
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    int-to-float p2, p2

    iget-object v4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v4, v4, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    cmpl-float p2, p2, v4

    if-nez p2, :cond_d

    .line 605
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    mul-int/lit8 p2, p2, -0x1

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v1, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    div-int/2addr v1, v7

    sub-int/2addr p2, v1

    goto :goto_7

    .line 607
    :cond_d
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    div-int/2addr p2, v7

    goto :goto_7

    .line 602
    :cond_e
    :goto_6
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v1, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->gap:I

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v1, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    div-int/2addr v1, v7

    goto :goto_5

    :cond_f
    const/4 p2, 0x0

    .line 612
    :goto_7
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isTranscriptionTextVisible()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getTranscriptionEditText()Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->getHeight()I

    move-result v1

    goto :goto_8

    :cond_10
    const/4 v1, 0x0

    .line 614
    :goto_8
    iget-object v4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget v4, v4, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    add-int/2addr v4, p2

    .line 616
    iget-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    iget p2, p2, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    add-int/2addr v1, p2

    add-int/2addr v1, p1

    int-to-float p1, v1

    div-float/2addr p1, v3

    int-to-float p2, v4

    div-float/2addr p2, v0

    .line 623
    new-array v0, v7, [Ljava/lang/Object;

    .line 626
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v6

    const-string p1, "osk showPopup %f %f"

    .line 624
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 623
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    const-string p1, "#main"

    .line 627
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 628
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getShowRemoteInput()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    .line 629
    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getWidth()I

    move-result p1

    if-lez p1, :cond_12

    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    .line 630
    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getHeight()I

    move-result p1

    if-lez p1, :cond_12

    .line 631
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    .line 632
    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getRemoteInputKeyboard()Lcom/oculus/panelapp/keyboardv2/Keyboard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    .line 633
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 634
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/oculus/panelapp/keyboardv2/R$string;->keyboard_remote_input_key_hover_tooltip:I

    .line 635
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 631
    invoke-virtual {p0, p1, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->showTooltip(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;Ljava/lang/String;)V

    goto :goto_9

    .line 637
    :cond_12
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->actionHideSystemTooltip()V

    :cond_13
    :goto_9
    return-void
.end method

.method public onBackButton()Z
    .locals 10

    .line 648
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getMainKeyboard()Lcom/oculus/panelapp/keyboardv2/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getLayoutResId()I

    move-result v0

    sget v1, Lcom/oculus/panelapp/keyboardv2/R$xml;->language_selector_32:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    .line 649
    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getMainKeyboard()Lcom/oculus/panelapp/keyboardv2/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getLayoutResId()I

    move-result v0

    sget v1, Lcom/oculus/panelapp/keyboardv2/R$xml;->language_selector_48:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getNativePointer()J

    move-result-wide v3

    const/4 v9, 0x0

    const-string v5, "simple"

    const-string v6, "DISMISS"

    const-string v7, "DISMISS"

    const-string v8, "Command"

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->nativeOnAction(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 650
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->returnToCurrentLanguage()V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public onHoverEnter(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
    .locals 4

    const/4 v0, 0x1

    .line 508
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "apk:///assets/hover.ogg"

    aput-object v3, v1, v2

    const-string v3, "audioPlay %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 509
    iget-object v1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->PHONE_INPUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v2, v2, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-ne v1, v2, :cond_0

    .line 510
    iput-boolean v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->remoteInputTooltipShownOnHover:Z

    .line 513
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/panelapp/keyboardv2/R$string;->keyboard_remote_input_key_hover_tooltip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-virtual {p0, p1, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->showTooltip(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->hideTooltip()V

    :goto_0
    return-void
.end method

.method public onHoverExit()V
    .locals 0

    .line 521
    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->hideTooltip()V

    return-void
.end method

.method public onKey(I[I)V
    .locals 0

    return-void
.end method

.method public onLongPress(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;Z)Z
    .locals 9

    if-eqz p2, :cond_0

    .line 532
    iget v0, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftPopupResId:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->popupResId:I

    :goto_0
    iput v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupResId:I

    .line 533
    iget v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupResId:I

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 537
    :cond_1
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mLongPressedKey:Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    const/4 p1, 0x2

    const/4 v0, 0x0

    const-string v1, "popup"

    .line 538
    invoke-virtual {p0, v1, p1, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->ensurePanelLayer(Ljava/lang/String;ILcom/oculus/vrshell/panels/AndroidPanelApp$ViewConfigurator;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object p1

    .line 539
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    invoke-virtual {p0, p1, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->attachResizeLayoutListener(Lcom/oculus/vrshell/panels/AndroidPanelLayer;Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;)V

    .line 544
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupView:Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;

    invoke-virtual {p1, p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->initialize(Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V

    .line 545
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupView:Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;

    new-instance v0, Lcom/oculus/panelapp/keyboardv2/Keyboard;

    .line 547
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getPresentationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupResId:I

    iget-object v5, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    iget-object v6, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    iget-object v7, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    move-object v2, v0

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/oculus/panelapp/keyboardv2/Keyboard;-><init>(Landroid/content/Context;ILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;)V

    .line 545
    invoke-virtual {p1, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->setKeyboard(Lcom/oculus/panelapp/keyboardv2/Keyboard;)V

    .line 553
    iget-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mPopupView:Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;

    invoke-virtual {p1, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPopupView;->setShifted(Z)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onPhysicalKeyboardInput(II)V
    .locals 16

    move-object/from16 v9, p0

    .line 678
    iget-object v0, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    const-string v1, "#main"

    .line 679
    invoke-virtual {v9, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getPresentationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/oculus/panelapp/keyboardv2/R$xml;->en_us_text_physical_48:I

    iget-object v3, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    iget-object v4, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    iget-object v5, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v6, p0

    .line 678
    invoke-virtual/range {v0 .. v8}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->setKeyboard(Landroid/content/Context;ILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;IZ)V

    const-string v0, "telemetry oculus_keyboard_layout 1 0 layout en_us_text_physical_48"

    .line 687
    invoke-virtual {v9, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->hidePopupLayer()V

    .line 689
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->CAPSLOCK:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    iget v0, v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->value:I

    and-int v0, p2, v0

    const/4 v8, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 690
    :goto_0
    iget-object v0, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getMainKeyboard()Lcom/oculus/panelapp/keyboardv2/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move/from16 v0, p2

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;

    .line 692
    sget-object v2, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->CAPSLOCK:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    iget v2, v2, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->value:I

    not-int v2, v2

    and-int v13, v0, v2

    .line 694
    iget-boolean v0, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->supportsCapsLock:Z

    if-eqz v0, :cond_1

    if-eqz v11, :cond_1

    .line 696
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->SHIFT:Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    iget v0, v0, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->value:I

    xor-int/2addr v0, v13

    goto :goto_2

    :cond_1
    move v0, v13

    .line 699
    :goto_2
    iget-object v2, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codesModifier:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    iget-object v2, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codesModifier:Ljava/lang/CharSequence;

    .line 700
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/KeyModifier;

    move-result-object v2

    iget v2, v2, Lcom/oculus/panelapp/keyboardv2/KeyModifier;->value:I

    .line 701
    :goto_3
    iget-object v3, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v14, p1

    if-ne v3, v14, :cond_4

    if-ne v2, v0, :cond_4

    .line 702
    iget-boolean v0, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->isCommand:Z

    if-eqz v0, :cond_3

    .line 703
    iget-object v0, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->get(I)Lcom/oculus/panelapp/keyboardv2/KeyCode;

    move-result-object v0

    const-string v2, "simple"

    invoke-direct {v9, v2, v0, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->handleCommand(Ljava/lang/String;Lcom/oculus/panelapp/keyboardv2/KeyCode;Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    goto :goto_4

    .line 705
    :cond_3
    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, "apk:///assets/press.ogg"

    aput-object v2, v0, v10

    const-string v2, "audioPlay %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getNativePointer()J

    move-result-wide v2

    iget-object v0, v1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v5, "simple"

    const-string v6, "None"

    const-string v15, "Text"

    move-object/from16 v0, p0

    move-wide v1, v2

    move-object v3, v5

    move-object v5, v6

    move-object v6, v15

    invoke-virtual/range {v0 .. v7}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->nativeOnAction(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_4
    move v0, v13

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public onPress(Ljava/lang/String;ZLcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
    .locals 3

    if-eqz p3, :cond_2

    .line 127
    sget-object v0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp$1;->$SwitchMap$com$oculus$panelapp$keyboardv2$KeyCode:[I

    iget-object v1, p3, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->get(I)Lcom/oculus/panelapp/keyboardv2/KeyCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    if-eqz p2, :cond_0

    .line 150
    iget-object p2, p3, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->shiftText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 144
    :pswitch_0
    iget-object p2, p3, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->get(I)Lcom/oculus/panelapp/keyboardv2/KeyCode;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->handleCommand(Ljava/lang/String;Lcom/oculus/panelapp/keyboardv2/KeyCode;Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    const-string p1, "telemetry oculus_keyboard_command 1 0 remote_input 1"

    .line 145
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    return-void

    .line 140
    :pswitch_1
    iget-object p2, p3, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->get(I)Lcom/oculus/panelapp/keyboardv2/KeyCode;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->handleCommand(Ljava/lang/String;Lcom/oculus/panelapp/keyboardv2/KeyCode;Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    :pswitch_2
    return-void

    .line 150
    :cond_0
    iget-object p2, p3, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->text:Ljava/lang/CharSequence;

    :goto_0
    if-nez p2, :cond_1

    .line 151
    iget-object p2, p3, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->text:Ljava/lang/CharSequence;

    :cond_1
    if-eqz p2, :cond_2

    const/4 p3, 0x1

    .line 153
    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "apk:///assets/press.ogg"

    aput-object v0, p3, v2

    const-string v0, "audioPlay %s"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 154
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->commitTextInput(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRelease(Ljava/lang/String;ZLcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
    .locals 14

    move-object v9, p0

    move-object/from16 v10, p3

    .line 264
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->hidePopupLayer()V

    .line 265
    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->LAYOUT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v1, v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    const-string v2, "apk:///assets/layout.ogg"

    const-string v12, "audioPlay %s"

    const/4 v13, 0x1

    if-ne v0, v1, :cond_3

    .line 266
    new-array v0, v13, [Ljava/lang/Object;

    aput-object v2, v0, v11

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 267
    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardLocale:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    if-eq v0, v1, :cond_0

    .line 268
    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardLocale:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->setUILanguage(Ljava/lang/String;)V

    .line 269
    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardLocale:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->setUserLocale(Ljava/lang/String;)V

    .line 270
    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardLocale:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 271
    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    .line 272
    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/ActionType;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentInputType:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 273
    invoke-virtual {v2}, Lcom/oculus/panelapp/keyboardv2/InputType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-virtual {p0, v0, v1, v2, v13}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->setEnvironment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_0
    const/4 v0, -0x1

    .line 277
    iget v1, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardId:I

    sget v2, Lcom/oculus/panelapp/keyboardv2/R$xml;->language_selector_32:I

    if-eq v1, v2, :cond_2

    iget v1, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardId:I

    sget v2, Lcom/oculus/panelapp/keyboardv2/R$xml;->language_selector_48:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    goto :goto_1

    .line 279
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getKeyboardLayoutResourceId()I

    move-result v0

    move v7, v0

    .line 281
    :goto_1
    iget-object v0, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    const-string v1, "#main"

    .line 282
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getPresentationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardId:I

    iget-object v3, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    iget-object v4, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    iget-object v5, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    const/4 v8, 0x0

    move-object v6, p0

    .line 281
    invoke-virtual/range {v0 .. v8}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->setKeyboard(Landroid/content/Context;ILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;IZ)V

    .line 290
    new-array v0, v13, [Ljava/lang/Object;

    .line 293
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    const-string v1, "telemetry oculus_keyboard_layout 1 0 layout %s"

    .line 291
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    goto :goto_2

    .line 295
    :cond_3
    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->RETURN_TO_CURRENT_LANGUAGE:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v1, v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 296
    new-array v0, v13, [Ljava/lang/Object;

    aput-object v2, v0, v11

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 297
    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyboardSize;->UNKNOWN:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    if-eq v0, v1, :cond_4

    .line 298
    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->keyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    invoke-direct {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->setUserKeyboardSize(Lcom/oculus/panelapp/keyboardv2/KeyboardSize;)V

    .line 300
    :cond_4
    invoke-direct {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->returnToCurrentLanguage()V

    goto :goto_2

    .line 301
    :cond_5
    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->DISMISS:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v1, v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-eq v0, v1, :cond_6

    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    .line 302
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->ACTION_KEY:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v1, v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-ne v0, v1, :cond_7

    .line 303
    :cond_6
    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/oculus/panelapp/keyboardv2/KeyCode;->get(I)Lcom/oculus/panelapp/keyboardv2/KeyCode;

    move-result-object v0

    move-object v1, p1

    invoke-direct {p0, p1, v0, v10}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->handleCommand(Ljava/lang/String;Lcom/oculus/panelapp/keyboardv2/KeyCode;Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V

    .line 306
    :cond_7
    :goto_2
    iget-object v0, v10, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->codes:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->SHIFT:Lcom/oculus/panelapp/keyboardv2/KeyCode;

    iget v1, v1, Lcom/oculus/panelapp/keyboardv2/KeyCode;->value:I

    if-ne v0, v1, :cond_8

    .line 307
    new-array v0, v13, [Ljava/lang/Object;

    const-string v1, "apk:///assets/press.ogg"

    aput-object v1, v0, v11

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 308
    iget-object v0, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->flipShifted()V

    goto :goto_3

    .line 310
    :cond_8
    iget-object v0, v9, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {v0, v11}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->setShifted(Z)V

    :goto_3
    return-void
.end method

.method public setEnvironment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .line 371
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->parseLocale(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    move-result-object p1

    .line 372
    invoke-static {p2}, Lcom/oculus/panelapp/keyboardv2/ActionType;->getActionType(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/ActionType;

    move-result-object p2

    .line 373
    invoke-static {p3}, Lcom/oculus/panelapp/keyboardv2/InputType;->getInputType(Ljava/lang/String;)Lcom/oculus/panelapp/keyboardv2/InputType;

    move-result-object p3

    if-nez p4, :cond_0

    .line 374
    iget-object p4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    if-ne p1, p4, :cond_0

    iget-object p4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentInputType:Lcom/oculus/panelapp/keyboardv2/InputType;

    if-ne p3, p4, :cond_0

    iget-object p4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    if-eq p2, p4, :cond_2

    .line 378
    :cond_0
    iget-object p4, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p4, :cond_1

    const/4 p4, 0x3

    .line 379
    new-array p4, p4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mUiLanguage:Ljava/lang/String;

    aput-object v2, p4, v0

    iget-object v2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mDefaultLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 382
    invoke-virtual {v2}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v2

    const-string v2, "telemetry oculus_keyboard_language 1 0 ui_language %s default_language %s keyboard_language %s"

    .line 380
    invoke-static {v2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 379
    invoke-virtual {p0, p4}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 384
    :cond_1
    iput-object p1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    .line 385
    iput-object p3, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentInputType:Lcom/oculus/panelapp/keyboardv2/InputType;

    .line 386
    iput-object p2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    .line 387
    iput-boolean v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isMainKeyboardEnvSet:Z

    .line 388
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getKeyboardLayoutResourceId()I

    move-result p1

    .line 389
    iget-object v2, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    const-string p2, "#main"

    .line 390
    invoke-virtual {p0, p2}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getPresentationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentActionType:Lcom/oculus/panelapp/keyboardv2/ActionType;

    iget-object v6, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentLanguage:Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;

    iget-object v7, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mCurrentKeyboardSize:Lcom/oculus/panelapp/keyboardv2/KeyboardSize;

    const/4 v9, -0x1

    .line 397
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isRemoteInputEnabled()Z

    move-result v10

    move v4, p1

    move-object v8, p0

    .line 389
    invoke-virtual/range {v2 .. v10}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->setKeyboard(Landroid/content/Context;ILcom/oculus/panelapp/keyboardv2/ActionType;Lcom/oculus/panelapp/keyboardv2/KeyboardLocale;Lcom/oculus/panelapp/keyboardv2/KeyboardSize;Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;IZ)V

    .line 398
    new-array p2, v1, [Ljava/lang/Object;

    .line 401
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "telemetry oculus_keyboard_layout 1 0 layout %s"

    .line 399
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->queueRawCommand(Ljava/lang/String;)V

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->hidePopupLayer()V

    return-void
.end method

.method public showPopup()V
    .locals 0

    return-void
.end method

.method public showTooltip(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;Ljava/lang/String;)V
    .locals 8

    .line 239
    invoke-virtual {p0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->isTranscriptionTextVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget v0, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getTranscriptionEditText()Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->getHeight()I

    move-result v1

    goto :goto_0

    .line 242
    :cond_0
    iget v0, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->y:I

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    .line 244
    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getMainKeyboard()Lcom/oculus/panelapp/keyboardv2/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/Keyboard;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    .line 245
    invoke-virtual {v1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getRemoteInputLayoutTopMargin()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    move v2, v0

    .line 247
    iget v1, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->x:I

    iget v3, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->width:I

    iget v4, p1, Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;->height:I

    const-string p1, "#main"

    .line 253
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getWidth()I

    move-result v5

    .line 254
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->getPanelLayer(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/vrshell/panels/AndroidPanelLayer;->getHeight()I

    move-result v6

    sget-object v7, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Right:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    .line 248
    invoke-static/range {v1 .. v7}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;->getTooltipUVCoordinates(IIIIIILcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;)Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;

    move-result-object v0

    .line 256
    new-instance v1, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;

    sget-object v2, Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;->Right:Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;

    const-string v3, "Keyboard_phone_input_tooltip"

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/vrshell/panels/systemtooltip/TooltipPosition;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->actionShowSystemTooltip(Lcom/oculus/vrshell/panels/systemtooltip/TooltipDefinition;Lcom/oculus/vrshell/panels/systemtooltip/TooltipUVCoordinates;)V

    return-void
.end method

.method public stopTranscription()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mKeyboardTranscription:Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardTranscription;->stopTranscription()V

    :cond_0
    return-void
.end method

.method public updateTranscription(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 720
    :goto_0
    iget-object v0, p0, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelApp;->mMainView:Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;

    invoke-virtual {v0}, Lcom/oculus/panelapp/keyboardv2/KeyboardPanelView;->getTranscriptionEditText()Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oculus/panelapp/keyboardv2/TranscriptionEditText;->updateTranscriptionText(Ljava/lang/String;Z)V

    return-void
.end method
