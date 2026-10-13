.class public final Lcom/oculus/panelapp/debug/SystemDialogTab;
.super Landroid/widget/LinearLayout;
.source "SystemDialogTab.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/views/ShellTabHost$ShellTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setupDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V
    .locals 3

    .line 239
    new-instance v0, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v1, "close"

    const-string v2, "Close"

    invoke-direct {v0, v1, v2}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setTertiaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    if-eqz p3, :cond_0

    .line 242
    new-instance v0, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v1, "back"

    const-string v2, "Back"

    invoke-direct {v0, v1, v2}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Lcom/oculus/systemdialog/DialogButtonText;->setDoesNotAutoClose()V

    .line 247
    invoke-virtual {p2, v0}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setSecondaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 251
    new-instance v0, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v1, "next"

    const-string v2, "Next"

    invoke-direct {v0, v1, v2}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Lcom/oculus/systemdialog/DialogButtonText;->setDoesNotAutoClose()V

    .line 256
    invoke-virtual {p2, v0}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setPrimaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 259
    :cond_1
    new-instance v0, Lcom/oculus/panelapp/debug/SystemDialogTab$8;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/oculus/panelapp/debug/SystemDialogTab$8;-><init>(Lcom/oculus/panelapp/debug/SystemDialogTab;Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    .line 280
    invoke-virtual {p2, v0}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setDialogResultHandler(Lcom/oculus/systemdialog/DialogResultHandler;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/vrshell/panels/views/ShellTabHost;)V
    .locals 3

    .line 32
    sget v0, Lcom/oculus/panelapp/debug/R$id;->debug_tab_system_dialog:I

    const-string v1, "system_dialog"

    const-string v2, "SystemDialog"

    invoke-virtual {p2, v1, v2, v0}, Lcom/oculus/vrshell/panels/views/ShellTabHost;->addTab(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->initializeDialogFlow(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->initializeBackButtonDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->initializeIconButtonDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->initializeInformationBoxDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->initializeListDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->initializeFullFeatureDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V

    return-void
.end method

.method public initializeBackButtonDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
    .locals 4

    .line 43
    new-instance v0, Lcom/oculus/systemdialog/DialogDefinitionCustom;

    const-string v1, "debug_back_button_dialog"

    const-string v2, "Back Button Dialog"

    const-string v3, "This dialog shows a back button. Click it to close this dialog."

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/systemdialog/DialogDefinitionCustom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/oculus/systemdialog/DialogButton;

    const-string v2, "back"

    invoke-direct {v1, v2}, Lcom/oculus/systemdialog/DialogButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setBackButton(Lcom/oculus/systemdialog/DialogButton;)V

    .line 49
    new-instance v1, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v2, "cancel"

    const-string v3, "Cancel"

    invoke-direct {v1, v2, v3}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setPrimaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 51
    sget v1, Lcom/oculus/panelapp/debug/R$id;->back_button_dialog_button:I

    .line 52
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 53
    new-instance v2, Lcom/oculus/panelapp/debug/SystemDialogTab$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/oculus/panelapp/debug/SystemDialogTab$1;-><init>(Lcom/oculus/panelapp/debug/SystemDialogTab;Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initializeDialogFlow(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
    .locals 7

    .line 199
    new-instance v0, Lcom/oculus/systemdialog/DialogDefinitionCustom;

    const-string v1, "debug_step1_dialog"

    const-string v2, "Step 1"

    const-string v3, "You are on step 1. Press on the buttons below to continue navigating through the dialog flow..."

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/systemdialog/DialogDefinitionCustom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v1, Lcom/oculus/systemdialog/DialogDefinitionCustom;

    const-string v2, "debug_step2_dialog"

    const-string v3, "Step 2"

    const-string v4, "You are on step 2."

    invoke-direct {v1, v2, v3, v4}, Lcom/oculus/systemdialog/DialogDefinitionCustom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v2, Lcom/oculus/systemdialog/DialogDefinitionCustom;

    const-string v3, "debug_step3_dialog"

    const-string v4, "Step 3"

    const-string v5, "You are on step 3. Only one more step to go in the dialog flow."

    invoke-direct {v2, v3, v4, v5}, Lcom/oculus/systemdialog/DialogDefinitionCustom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v3, Lcom/oculus/systemdialog/DialogDefinitionCustom;

    const-string v4, "debug_step4_dialog"

    const-string v5, "Step 4"

    const-string v6, "You have completed the dialog flow."

    invoke-direct {v3, v4, v5, v6}, Lcom/oculus/systemdialog/DialogDefinitionCustom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 215
    invoke-direct {p0, p1, v0, v4, v1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->setupDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    .line 216
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/oculus/panelapp/debug/SystemDialogTab;->setupDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    .line 217
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/oculus/panelapp/debug/SystemDialogTab;->setupDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    .line 218
    invoke-direct {p0, p1, v3, v2, v4}, Lcom/oculus/panelapp/debug/SystemDialogTab;->setupDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    .line 220
    sget v1, Lcom/oculus/panelapp/debug/R$id;->dialog_flow_button:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 221
    new-instance v2, Lcom/oculus/panelapp/debug/SystemDialogTab$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/oculus/panelapp/debug/SystemDialogTab$7;-><init>(Lcom/oculus/panelapp/debug/SystemDialogTab;Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initializeFullFeatureDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
    .locals 4

    .line 175
    new-instance v0, Lcom/oculus/systemdialog/DialogDefinitionCustom;

    const-string v1, "debug_full_feature_dialog"

    const-string v2, "Full Feature Dialog"

    const-string v3, "This dialog shows most available UI features."

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/systemdialog/DialogDefinitionCustom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Add additional information here..."

    .line 180
    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setInformationBox(Ljava/lang/String;)V

    .line 181
    new-instance v1, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v2, "primary"

    const-string v3, "Primary Button"

    invoke-direct {v1, v2, v3}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setPrimaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 182
    new-instance v1, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v2, "secondary"

    const-string v3, "Secondary Button"

    invoke-direct {v1, v2, v3}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setSecondaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 183
    new-instance v1, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v2, "tertiary"

    const-string v3, "Tertiary Button"

    invoke-direct {v1, v2, v3}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setTertiaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 184
    new-instance v1, Lcom/oculus/systemdialog/DialogButtonIcon;

    sget-object v2, Lcom/oculus/systemdialog/DialogIcon;->INFO:Lcom/oculus/systemdialog/DialogIcon;

    const-string v3, "cancel"

    invoke-direct {v1, v3, v2}, Lcom/oculus/systemdialog/DialogButtonIcon;-><init>(Ljava/lang/String;Lcom/oculus/systemdialog/DialogIcon;)V

    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setIconButton(Lcom/oculus/systemdialog/DialogButtonIcon;)V

    .line 185
    new-instance v1, Lcom/oculus/systemdialog/DialogButton;

    const-string v2, "back"

    invoke-direct {v1, v2}, Lcom/oculus/systemdialog/DialogButton;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setBackButton(Lcom/oculus/systemdialog/DialogButton;)V

    .line 187
    sget v1, Lcom/oculus/panelapp/debug/R$id;->full_feature_dialog_button:I

    .line 188
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 189
    new-instance v2, Lcom/oculus/panelapp/debug/SystemDialogTab$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/oculus/panelapp/debug/SystemDialogTab$6;-><init>(Lcom/oculus/panelapp/debug/SystemDialogTab;Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initializeIconButtonDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
    .locals 4

    .line 63
    new-instance v0, Lcom/oculus/systemdialog/DialogDefinitionCustom;

    const-string v1, "debug_icon_button_dialog"

    const-string v2, "Icon Button Dialog"

    const-string v3, "This dialog shows an icon button. Click it to close this dialog."

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/systemdialog/DialogDefinitionCustom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/oculus/systemdialog/DialogButtonIcon;

    sget-object v2, Lcom/oculus/systemdialog/DialogIcon;->INFO:Lcom/oculus/systemdialog/DialogIcon;

    const-string v3, "cancel"

    invoke-direct {v1, v3, v2}, Lcom/oculus/systemdialog/DialogButtonIcon;-><init>(Ljava/lang/String;Lcom/oculus/systemdialog/DialogIcon;)V

    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setIconButton(Lcom/oculus/systemdialog/DialogButtonIcon;)V

    .line 69
    new-instance v1, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v2, "Cancel"

    invoke-direct {v1, v3, v2}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setPrimaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 71
    sget v1, Lcom/oculus/panelapp/debug/R$id;->icon_button_dialog_button:I

    .line 72
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 73
    new-instance v2, Lcom/oculus/panelapp/debug/SystemDialogTab$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/oculus/panelapp/debug/SystemDialogTab$2;-><init>(Lcom/oculus/panelapp/debug/SystemDialogTab;Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initializeInformationBoxDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
    .locals 4

    .line 83
    new-instance v0, Lcom/oculus/systemdialog/DialogDefinitionCustom;

    const-string v1, "debug_information_box_dialog"

    const-string v2, "Information Box Dialog"

    const-string v3, "This dialog shows an information box."

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/systemdialog/DialogDefinitionCustom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Add additional information here..."

    .line 88
    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setInformationBox(Ljava/lang/String;)V

    .line 89
    new-instance v1, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v2, "cancel"

    const-string v3, "Cancel"

    invoke-direct {v1, v2, v3}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setPrimaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 91
    sget v1, Lcom/oculus/panelapp/debug/R$id;->information_box_dialog_button:I

    .line 92
    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 93
    new-instance v2, Lcom/oculus/panelapp/debug/SystemDialogTab$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/oculus/panelapp/debug/SystemDialogTab$3;-><init>(Lcom/oculus/panelapp/debug/SystemDialogTab;Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initializeListDialog(Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;)V
    .locals 9

    .line 103
    new-instance v0, Lcom/oculus/systemdialog/DialogDefinitionCustom;

    const-string v1, "debug_single_select_list_dialog"

    const-string v2, "Single Select List Dialog"

    const-string v3, "This dialog shows a single select list."

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/systemdialog/DialogDefinitionCustom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/oculus/systemdialog/DialogDefinitionCustom;

    const-string v2, "debug_multi_select_list_dialog"

    const-string v3, "Multi Select List Dialog"

    const-string v4, "This dialog shows a multi select list."

    invoke-direct {v1, v2, v3, v4}, Lcom/oculus/systemdialog/DialogDefinitionCustom;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance v2, Lcom/oculus/systemdialog/DialogList;

    sget-object v3, Lcom/oculus/systemdialog/DialogListType;->SINGLE_SELECT:Lcom/oculus/systemdialog/DialogListType;

    invoke-direct {v2, v3}, Lcom/oculus/systemdialog/DialogList;-><init>(Lcom/oculus/systemdialog/DialogListType;)V

    .line 115
    new-instance v3, Lcom/oculus/systemdialog/DialogList;

    sget-object v4, Lcom/oculus/systemdialog/DialogListType;->MULTI_SELECT:Lcom/oculus/systemdialog/DialogListType;

    invoke-direct {v3, v4}, Lcom/oculus/systemdialog/DialogList;-><init>(Lcom/oculus/systemdialog/DialogListType;)V

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x14

    if-ge v4, v5, :cond_0

    .line 117
    new-instance v5, Lcom/oculus/systemdialog/DialogListItem;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item_id_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Item Number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/oculus/systemdialog/DialogListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2, v5}, Lcom/oculus/systemdialog/DialogList;->addListItem(Lcom/oculus/systemdialog/DialogListItem;)V

    .line 120
    invoke-virtual {v3, v5}, Lcom/oculus/systemdialog/DialogList;->addListItem(Lcom/oculus/systemdialog/DialogListItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0, v2}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setList(Lcom/oculus/systemdialog/DialogList;)V

    .line 124
    invoke-virtual {v1, v3}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setList(Lcom/oculus/systemdialog/DialogList;)V

    .line 130
    new-instance v2, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v3, "multi"

    const-string v4, "Show Multi Select"

    invoke-direct {v2, v3, v4}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Lcom/oculus/systemdialog/DialogButtonText;->setDoesNotAutoClose()V

    .line 133
    invoke-virtual {v0, v2}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setPrimaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 134
    new-instance v2, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v3, "Cancel"

    const-string v4, "cancel"

    invoke-direct {v2, v4, v3}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setSecondaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 136
    new-instance v2, Lcom/oculus/systemdialog/DialogButtonText;

    const-string v5, "single"

    const-string v6, "Show Single Select"

    invoke-direct {v2, v5, v6}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v2}, Lcom/oculus/systemdialog/DialogButtonText;->setDoesNotAutoClose()V

    .line 139
    invoke-virtual {v1, v2}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setPrimaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 140
    new-instance v2, Lcom/oculus/systemdialog/DialogButtonText;

    invoke-direct {v2, v4, v3}, Lcom/oculus/systemdialog/DialogButtonText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setSecondaryButton(Lcom/oculus/systemdialog/DialogButtonText;)V

    .line 142
    new-instance v2, Lcom/oculus/panelapp/debug/SystemDialogTab$4;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/oculus/panelapp/debug/SystemDialogTab$4;-><init>(Lcom/oculus/panelapp/debug/SystemDialogTab;Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    .line 162
    invoke-virtual {v0, v2}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setDialogResultHandler(Lcom/oculus/systemdialog/DialogResultHandler;)V

    .line 163
    invoke-virtual {v1, v2}, Lcom/oculus/systemdialog/DialogDefinitionCustom;->setDialogResultHandler(Lcom/oculus/systemdialog/DialogResultHandler;)V

    .line 165
    sget v1, Lcom/oculus/panelapp/debug/R$id;->list_dialog_button:I

    invoke-virtual {p0, v1}, Lcom/oculus/panelapp/debug/SystemDialogTab;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oculus/vrshell/panels/views/ShellButton;

    .line 166
    new-instance v2, Lcom/oculus/panelapp/debug/SystemDialogTab$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/oculus/panelapp/debug/SystemDialogTab$5;-><init>(Lcom/oculus/panelapp/debug/SystemDialogTab;Lcom/oculus/vrshell/panels/ShellAndroidPanelApp;Lcom/oculus/systemdialog/DialogDefinitionCustom;)V

    invoke-virtual {v1, v2}, Lcom/oculus/vrshell/panels/views/ShellButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
