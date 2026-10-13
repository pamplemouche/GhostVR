.class public final enum Lcom/oculus/common/gatekeepers/Gatekeeper;
.super Ljava/lang/Enum;
.source "Gatekeeper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/common/gatekeepers/Gatekeeper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_BRIGHTNESS_SETTINGS_SLIDER_ON_QUEST:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_CHAT_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_GALLERY_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_GUARDIAN_3DOF_MODE:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_GUARDIAN_BUTTONS:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_GUARDIAN_SETTINGS_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_LIVING_ROOM_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_MESSAGES_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_PARTY_FB_UPSELL:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_PARTY_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_PASSTHROUGH_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_REPORT_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_SOCIAL_ICONS:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_TOOLTIPS:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum AUI_TV_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum OC5_LAUNCHER:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum PARTIES_BLOCK:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum PARTIES_JOINABLE_CALLS:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum PARTIES_JOIN_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum PARTIES_MESSAGE_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum QUEST_DOGFOODING_UPDATE:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum QUEST_OTA_FAST_DOGFOODING:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum QUEST_OTA_SLOW_DOGFOODING:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum QUEST_RECENTER:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum SETTINGS_APP_LANGUAGE_TAB:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum SOCIAL_OCTV:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum VRSHELL_BUGREPORTER_V2_ENABLED:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum VRSHELL_DEBUG_PANEL:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum VRSHELL_JEDI_MODE:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum VRSHELL_KEYBOARD_REMOTE_INPUT:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum VRSHELL_MULTI_APP:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum VRSHELL_PACKAGE_INSTALLER:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum VRSHELL_PARTY_SYNC:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum VRSHELL_SYSUX_UNIFIED_DIALOGS:Lcom/oculus/common/gatekeepers/Gatekeeper;

.field public static final enum VRSHELL_VRCAST:Lcom/oculus/common/gatekeepers/Gatekeeper;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/4 v1, 0x0

    const-string v2, "AUI_BRIGHTNESS_SETTINGS_SLIDER_ON_QUEST"

    const-string v3, "oculus_anytimeui_brightness_settings_slider_quest"

    invoke-direct {v0, v2, v1, v3}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_BRIGHTNESS_SETTINGS_SLIDER_ON_QUEST:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 8
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/4 v2, 0x1

    const-string v3, "AUI_CHAT_ICON"

    const-string v4, "oculus_vrshell_anytimeui_chat_icon"

    invoke-direct {v0, v3, v2, v4}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_CHAT_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 9
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/4 v3, 0x2

    const-string v4, "AUI_GALLERY_BUTTON"

    const-string v5, "oculus_vrshell_core_gallery_button"

    invoke-direct {v0, v4, v3, v5}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GALLERY_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 10
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/4 v4, 0x3

    const-string v5, "AUI_GUARDIAN_BUTTONS"

    const-string v6, "oculus_vrshell_anytimeui_guardian_buttons"

    invoke-direct {v0, v5, v4, v6}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GUARDIAN_BUTTONS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 11
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/4 v5, 0x4

    const-string v6, "AUI_GUARDIAN_3DOF_MODE"

    const-string v7, "oculus_vrshell_anytimeui_guardian_3dof_option"

    invoke-direct {v0, v6, v5, v7}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GUARDIAN_3DOF_MODE:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 12
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/4 v6, 0x5

    const-string v7, "AUI_GUARDIAN_SETTINGS_BUTTON"

    const-string v8, "oculus_vrshell_anytimeui_guardian_settings_button"

    invoke-direct {v0, v7, v6, v8}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GUARDIAN_SETTINGS_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 13
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/4 v7, 0x6

    const-string v8, "AUI_MESSAGES_ICON"

    const-string v9, "oculus_vrshell_anytimeui_messages_icon"

    invoke-direct {v0, v8, v7, v9}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_MESSAGES_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 14
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/4 v8, 0x7

    const-string v9, "AUI_PARTY_ICON"

    const-string v10, "oculus_vrshell_anytimeui_party_icon"

    invoke-direct {v0, v9, v8, v10}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_PARTY_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 15
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v9, 0x8

    const-string v10, "AUI_PASSTHROUGH_BUTTON"

    const-string v11, "oculus_vrshell_anytimeui_passthrough_button"

    invoke-direct {v0, v10, v9, v11}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_PASSTHROUGH_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 16
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v10, 0x9

    const-string v11, "AUI_REPORT_ICON"

    const-string v12, "oculus_vrshell_anytimeui_report_icon"

    invoke-direct {v0, v11, v10, v12}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_REPORT_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 17
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v11, 0xa

    const-string v12, "AUI_SOCIAL_ICONS"

    const-string v13, "oculus_vrshell_anytimeui_social_icons"

    invoke-direct {v0, v12, v11, v13}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_SOCIAL_ICONS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 18
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v12, 0xb

    const-string v13, "AUI_TOOLTIPS"

    const-string v14, "oculus_mobile_anytimeui_tooltips"

    invoke-direct {v0, v13, v12, v14}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_TOOLTIPS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 19
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v13, 0xc

    const-string v14, "AUI_TV_BUTTON"

    const-string v15, "oculus_vrshell_core_tv_button"

    invoke-direct {v0, v14, v13, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_TV_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 20
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v14, 0xd

    const-string v15, "AUI_LIVING_ROOM_BUTTON"

    const-string v13, "oculus_vrshell_anytimeui_living_room_button"

    invoke-direct {v0, v15, v14, v13}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_LIVING_ROOM_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 21
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v13, 0xe

    const-string v15, "AUI_PARTY_FB_UPSELL"

    const-string v14, "oculus_social_party_fb_upsell"

    invoke-direct {v0, v15, v13, v14}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_PARTY_FB_UPSELL:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 22
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v14, "OC5_LAUNCHER"

    const/16 v15, 0xf

    const-string v13, "oculus_vrshell_oc5_systemlauncher"

    invoke-direct {v0, v14, v15, v13}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->OC5_LAUNCHER:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 23
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "PARTIES_BLOCK"

    const/16 v14, 0x10

    const-string v15, "oculus_party_block_members"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_BLOCK:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 24
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "PARTIES_JOIN_BUTTON"

    const/16 v14, 0x11

    const-string v15, "oculus_parties_join_button"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_JOIN_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 25
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "PARTIES_JOINABLE_CALLS"

    const/16 v14, 0x12

    const-string v15, "oculus_party_joinable_calls"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_JOINABLE_CALLS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 26
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "PARTIES_MESSAGE_BUTTON"

    const/16 v14, 0x13

    const-string v15, "oculus_parties_message_button"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_MESSAGE_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 27
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "QUEST_DOGFOODING_UPDATE"

    const/16 v14, 0x14

    const-string v15, "oculus_quest_dogfooding_update"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_DOGFOODING_UPDATE:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 28
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "QUEST_OTA_FAST_DOGFOODING"

    const/16 v14, 0x15

    const-string v15, "oculus_monterey_ota_fast_dogfooding"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_OTA_FAST_DOGFOODING:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 29
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "QUEST_OTA_SLOW_DOGFOODING"

    const/16 v14, 0x16

    const-string v15, "oculus_monterey_ota_slow_dogfooding"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_OTA_SLOW_DOGFOODING:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 30
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "QUEST_RECENTER"

    const/16 v14, 0x17

    const-string v15, "oculus_vrshell_quest_recenter"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_RECENTER:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 31
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "SETTINGS_APP_LANGUAGE_TAB"

    const/16 v14, 0x18

    const-string v15, "settings_panel_langauge_tab_gk"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->SETTINGS_APP_LANGUAGE_TAB:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 32
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "SOCIAL_OCTV"

    const/16 v14, 0x19

    const-string v15, "oculus_vrshell_enable_social_octv"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->SOCIAL_OCTV:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 33
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "VRSHELL_BUGREPORTER_V2_ENABLED"

    const/16 v14, 0x1a

    const-string v15, "oculus_bugreporter_v2_enabled"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_BUGREPORTER_V2_ENABLED:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 34
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "VRSHELL_DEBUG_PANEL"

    const/16 v14, 0x1b

    const-string v15, "oculus_vrshell_core_debug_panel"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_DEBUG_PANEL:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 35
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "VRSHELL_JEDI_MODE"

    const/16 v14, 0x1c

    const-string v15, "oculus_vrshell_core_jedi"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_JEDI_MODE:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 36
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "VRSHELL_MULTI_APP"

    const/16 v14, 0x1d

    const-string v15, "oculus_vrshell_multiapp"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_MULTI_APP:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 37
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "VRSHELL_PACKAGE_INSTALLER"

    const/16 v14, 0x1e

    const-string v15, "oculus_vrshell_package_installer"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_PACKAGE_INSTALLER:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 38
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "VRSHELL_PARTY_SYNC"

    const/16 v14, 0x1f

    const-string v15, "oculus_vrshell_party_sync"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_PARTY_SYNC:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 39
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "VRSHELL_SYSUX_UNIFIED_DIALOGS"

    const/16 v14, 0x20

    const-string v15, "oculus_mobile_sysux_unified_dialogs_v9"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_SYSUX_UNIFIED_DIALOGS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 40
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "VRSHELL_VRCAST"

    const/16 v14, 0x21

    const-string v15, "oculus_vrshell_enable_vrcast"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_VRCAST:Lcom/oculus/common/gatekeepers/Gatekeeper;

    .line 41
    new-instance v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    const-string v13, "VRSHELL_KEYBOARD_REMOTE_INPUT"

    const/16 v14, 0x22

    const-string v15, "oculus_vrshell_keyboard_remote_input"

    invoke-direct {v0, v13, v14, v15}, Lcom/oculus/common/gatekeepers/Gatekeeper;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_KEYBOARD_REMOTE_INPUT:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v0, 0x23

    .line 5
    new-array v0, v0, [Lcom/oculus/common/gatekeepers/Gatekeeper;

    sget-object v13, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_BRIGHTNESS_SETTINGS_SLIDER_ON_QUEST:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v13, v0, v1

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_CHAT_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GALLERY_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GUARDIAN_BUTTONS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GUARDIAN_3DOF_MODE:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_GUARDIAN_SETTINGS_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_MESSAGES_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_PARTY_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_PASSTHROUGH_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_REPORT_ICON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v1, v0, v10

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_SOCIAL_ICONS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_TOOLTIPS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    aput-object v1, v0, v12

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_TV_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_LIVING_ROOM_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->AUI_PARTY_FB_UPSELL:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->OC5_LAUNCHER:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_BLOCK:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_JOIN_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_JOINABLE_CALLS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->PARTIES_MESSAGE_BUTTON:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_DOGFOODING_UPDATE:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_OTA_FAST_DOGFOODING:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_OTA_SLOW_DOGFOODING:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->QUEST_RECENTER:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->SETTINGS_APP_LANGUAGE_TAB:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->SOCIAL_OCTV:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_BUGREPORTER_V2_ENABLED:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_DEBUG_PANEL:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_JEDI_MODE:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_MULTI_APP:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_PACKAGE_INSTALLER:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_PARTY_SYNC:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_SYSUX_UNIFIED_DIALOGS:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_VRCAST:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/gatekeepers/Gatekeeper;->VRSHELL_KEYBOARD_REMOTE_INPUT:Lcom/oculus/common/gatekeepers/Gatekeeper;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sput-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->$VALUES:[Lcom/oculus/common/gatekeepers/Gatekeeper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/oculus/common/gatekeepers/Gatekeeper;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/common/gatekeepers/Gatekeeper;
    .locals 1

    .line 5
    const-class v0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/common/gatekeepers/Gatekeeper;

    return-object p0
.end method

.method public static values()[Lcom/oculus/common/gatekeepers/Gatekeeper;
    .locals 1

    .line 5
    sget-object v0, Lcom/oculus/common/gatekeepers/Gatekeeper;->$VALUES:[Lcom/oculus/common/gatekeepers/Gatekeeper;

    invoke-virtual {v0}, [Lcom/oculus/common/gatekeepers/Gatekeeper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/common/gatekeepers/Gatekeeper;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/oculus/common/gatekeepers/Gatekeeper;->mName:Ljava/lang/String;

    return-object v0
.end method
