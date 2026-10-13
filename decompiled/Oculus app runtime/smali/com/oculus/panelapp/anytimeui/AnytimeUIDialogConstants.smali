.class public final Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;
.super Ljava/lang/Object;
.source "AnytimeUIDialogConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;
    }
.end annotation


# instance fields
.field private final UriToDialogData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oculus/vrshell/SystemUXRoute;",
            "Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    .line 20
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->APP_MODE_INCOMPATIBLE:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->app_mode_incompatible_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x21c

    const/16 v7, 0x190

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->APP_UPDATE:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->app_update_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->BROWSER_CHOICE:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->browser_choice_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->CLOUD_STORAGE:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->cloud_storage_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v7, 0xe1

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->CONTROLLER_RECENTER:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->controller_recenter_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x1e0

    const/16 v7, 0x14f

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->ENTERPRISE_CERTIFICATE_EXPIRED:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->enterprise_certificate_expired_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->NOT_HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x200

    const/4 v7, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->ENTERPRISE_CERTIFICATE_EXPIRING_WARNING:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->enterprise_certificate_expiring_warning_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->NOT_HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->ENTERPRISE_GUARDIAN_DISABLED_WARNING:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->enterprise_guardian_disabled_warning_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->NOT_HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->ENTERPRISE_KIOSK_NOT_INSTALLED:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->enterprise_kiosk_not_installed_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->EXIT_TO_HOME:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->home_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x21c

    const/16 v7, 0x12c

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->FOCUS_WHEEL:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->focus_wheel_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x1a4

    const/16 v7, 0x14f

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->GUARDIAN_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->guardian_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x168

    const/16 v7, 0x190

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->GUARDIAN_ADJUST_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->guardian_adjust_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x258

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->GUARDIAN_LEFT_HAND_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->guardian_hand_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0xc8

    const/16 v7, 0xc8

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->GUARDIAN_RIGHT_HAND_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->guardian_hand_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->HEALTH_SAFETY:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->health_safety_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x268

    const/16 v7, 0x14f

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->HEALTH_SAFETY_LONG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->health_safety_long_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->IPD_ADJUST:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->ipd_adjust_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->NOT_HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x280

    const/16 v7, 0x280

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->LOCAL_STREAM_PRIVACY_CHECK_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->local_stream_privacy_check_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x208

    const/16 v7, 0x190

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->LOCAL_STREAM_START_FROM_DEVICE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->local_stream_start_from_device_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x200

    const/16 v7, 0x1d6

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->LOCAL_STREAM_STOP_FROM_DEVICE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->local_stream_stop_from_device_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x1a4

    const/16 v7, 0xc8

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->LOGIN_REQUIRED:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v5, Lcom/oculus/panelapp/anytimeui/R$layout;->login_required_dialog:I

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    const/16 v6, 0x208

    const/16 v7, 0x12c

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v2, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->OTA_BLOCKING:Lcom/oculus/vrshell/SystemUXRoute;

    sget-object v4, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->GO:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-ne v1, v4, :cond_0

    new-instance v4, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v6, Lcom/oculus/panelapp/anytimeui/R$layout;->ota_blocking_dialog_with_image:I

    const/16 v7, 0x2a8

    const/16 v8, 0x100

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v10, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v12, Lcom/oculus/panelapp/anytimeui/R$layout;->ota_blocking_dialog:I

    const/16 v13, 0x366

    const/16 v14, 0x190

    sget-object v15, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v16, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    :goto_0
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v2, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v3, Lcom/oculus/vrshell/SystemUXRoute;->OTA_BLOCKING2:Lcom/oculus/vrshell/SystemUXRoute;

    sget-object v4, Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;->GO:Lcom/oculus/vrshell/util/DeviceUtil$DeviceType;

    if-ne v1, v4, :cond_1

    new-instance v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v6, Lcom/oculus/panelapp/anytimeui/R$layout;->ota_blocking2_dialog_with_image:I

    const/16 v7, 0x268

    const/16 v8, 0xc0

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v10, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v12, Lcom/oculus/panelapp/anytimeui/R$layout;->ota_blocking2_dialog:I

    const/16 v13, 0x258

    const/16 v14, 0x190

    sget-object v15, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v16, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    :goto_1
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->OTA_BLOCKING_PREPARE_DEVICE:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->ota_blocking_prepare_device_dialog:I

    const/16 v5, 0x268

    const/16 v6, 0xc0

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->PANEL_REORIENT:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->panel_reorient_dialog:I

    const/16 v5, 0x21c

    const/16 v6, 0x64

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->PERMISSION_REQUEST:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->permission_request_dialog:I

    const/16 v5, 0x268

    const/4 v6, 0x0

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->QUEST_VIEW_RECENTER:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->quest_view_recenter_dialog:I

    const/16 v5, 0x140

    const/16 v6, 0x64

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->QUEST_SHOW_TASKBAR:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v10, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->quest_show_taskbar_dialog:I

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    sget-object v9, Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;->Flat:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;)V

    invoke-interface {v1, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_PARTY_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->social_party_dialog:I

    const/16 v5, 0x1a4

    const/16 v6, 0x244

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_PROFILE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->social_profile_dialog:I

    const/16 v5, 0x180

    const/16 v6, 0x190

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_RECEIVE_INVITE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->social_receive_invite_dialog:I

    const/16 v5, 0x1a4

    const/16 v6, 0x244

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->SOCIAL_SEND_INVITE_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->social_send_invite_dialog:I

    const/16 v5, 0x15c

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->SYSTEM_FAILURE_MESSAGE:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->system_ota_dialog:I

    const/16 v5, 0x208

    const/16 v6, 0x154

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->TEST_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->test_dialog:I

    const/16 v5, 0x268

    const/16 v6, 0xaf

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->TRACKING_MODE_3DOF_INCOMPAT_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->tracking_mode_3dof_incompat:I

    const/16 v5, 0x258

    const/16 v6, 0x190

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    sget-object v2, Lcom/oculus/vrshell/SystemUXRoute;->TRACKING_OFF_DIALOG:Lcom/oculus/vrshell/SystemUXRoute;

    new-instance v9, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    sget v4, Lcom/oculus/panelapp/anytimeui/R$layout;->tracking_off:I

    sget-object v7, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v8, Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;->HIT_TESTABLE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;-><init>(IIILcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;)V

    invoke-interface {v1, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private GetDialogDataForViewId(I)Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/SystemUXRoute;

    .line 422
    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    .line 423
    iget v2, v1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->VIEW_ID:I

    if-ne v2, p1, :cond_0

    return-object v1

    .line 429
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog viewIdentifier requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public GetHeightForViewId(I)I
    .locals 0

    .line 356
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetDialogDataForViewId(I)Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    move-result-object p1

    .line 357
    iget p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->HEIGHT:I

    return p1
.end method

.method public GetHitTestingBehaviorForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetDialogDataForViewId(I)Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    move-result-object p1

    .line 369
    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->HIT_TESTING_BEHAVIOR:Lcom/oculus/vrshell/panels/AndroidPanelLayer$HitTestingBehavior;

    return-object p1
.end method

.method public GetResizeBehaviorForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;
    .locals 0

    .line 362
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetDialogDataForViewId(I)Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    move-result-object p1

    .line 363
    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->RESIZE_BEHAVIOR:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    return-object p1
.end method

.method public GetShapeForViewId(I)Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;
    .locals 0

    .line 374
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetDialogDataForViewId(I)Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    move-result-object p1

    .line 375
    iget-object p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->SHAPE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$Shape;

    return-object p1
.end method

.method public GetViewIdForRoute(Lcom/oculus/vrshell/SystemUXRoute;)I
    .locals 3

    .line 340
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->UriToDialogData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    if-eqz v0, :cond_0

    .line 345
    iget p1, v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->VIEW_ID:I

    return p1

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public GetWidthForViewId(I)I
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants;->GetDialogDataForViewId(I)Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;

    move-result-object p1

    .line 351
    iget p1, p1, Lcom/oculus/panelapp/anytimeui/AnytimeUIDialogConstants$DialogData;->WIDTH:I

    return p1
.end method
