.class public final enum Lcom/oculus/vrshell/panels/telemetry/Event;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/panels/telemetry/Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/panels/telemetry/Event;

.field public static final enum oculus_vrshell_android_panel_click:Lcom/oculus/vrshell/panels/telemetry/Event;

.field public static final enum oculus_vrshell_capture_path:Lcom/oculus/vrshell/panels/telemetry/Event;

.field public static final enum oculus_vrshell_cloud_storage_dialog:Lcom/oculus/vrshell/panels/telemetry/Event;

.field public static final enum oculus_vrshell_panelapp_dogfooding:Lcom/oculus/vrshell/panels/telemetry/Event;

.field public static final enum oculus_vrshell_permissions_dialog:Lcom/oculus/vrshell/panels/telemetry/Event;

.field public static final enum section_entry:Lcom/oculus/vrshell/panels/telemetry/Event;

.field public static final enum section_exit:Lcom/oculus/vrshell/panels/telemetry/Event;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/oculus/vrshell/panels/telemetry/Event;

    const/4 v1, 0x0

    const-string v2, "section_entry"

    invoke-direct {v0, v2, v1}, Lcom/oculus/vrshell/panels/telemetry/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->section_entry:Lcom/oculus/vrshell/panels/telemetry/Event;

    .line 7
    new-instance v0, Lcom/oculus/vrshell/panels/telemetry/Event;

    const/4 v2, 0x1

    const-string v3, "section_exit"

    invoke-direct {v0, v3, v2}, Lcom/oculus/vrshell/panels/telemetry/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->section_exit:Lcom/oculus/vrshell/panels/telemetry/Event;

    .line 8
    new-instance v0, Lcom/oculus/vrshell/panels/telemetry/Event;

    const/4 v3, 0x2

    const-string v4, "oculus_vrshell_android_panel_click"

    invoke-direct {v0, v4, v3}, Lcom/oculus/vrshell/panels/telemetry/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_android_panel_click:Lcom/oculus/vrshell/panels/telemetry/Event;

    .line 9
    new-instance v0, Lcom/oculus/vrshell/panels/telemetry/Event;

    const/4 v4, 0x3

    const-string v5, "oculus_vrshell_cloud_storage_dialog"

    invoke-direct {v0, v5, v4}, Lcom/oculus/vrshell/panels/telemetry/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_cloud_storage_dialog:Lcom/oculus/vrshell/panels/telemetry/Event;

    .line 10
    new-instance v0, Lcom/oculus/vrshell/panels/telemetry/Event;

    const/4 v5, 0x4

    const-string v6, "oculus_vrshell_permissions_dialog"

    invoke-direct {v0, v6, v5}, Lcom/oculus/vrshell/panels/telemetry/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_permissions_dialog:Lcom/oculus/vrshell/panels/telemetry/Event;

    .line 11
    new-instance v0, Lcom/oculus/vrshell/panels/telemetry/Event;

    const/4 v6, 0x5

    const-string v7, "oculus_vrshell_capture_path"

    invoke-direct {v0, v7, v6}, Lcom/oculus/vrshell/panels/telemetry/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_capture_path:Lcom/oculus/vrshell/panels/telemetry/Event;

    .line 12
    new-instance v0, Lcom/oculus/vrshell/panels/telemetry/Event;

    const/4 v7, 0x6

    const-string v8, "oculus_vrshell_panelapp_dogfooding"

    invoke-direct {v0, v8, v7}, Lcom/oculus/vrshell/panels/telemetry/Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_panelapp_dogfooding:Lcom/oculus/vrshell/panels/telemetry/Event;

    const/4 v0, 0x7

    .line 5
    new-array v0, v0, [Lcom/oculus/vrshell/panels/telemetry/Event;

    sget-object v8, Lcom/oculus/vrshell/panels/telemetry/Event;->section_entry:Lcom/oculus/vrshell/panels/telemetry/Event;

    aput-object v8, v0, v1

    sget-object v1, Lcom/oculus/vrshell/panels/telemetry/Event;->section_exit:Lcom/oculus/vrshell/panels/telemetry/Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_android_panel_click:Lcom/oculus/vrshell/panels/telemetry/Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_cloud_storage_dialog:Lcom/oculus/vrshell/panels/telemetry/Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_permissions_dialog:Lcom/oculus/vrshell/panels/telemetry/Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_capture_path:Lcom/oculus/vrshell/panels/telemetry/Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/vrshell/panels/telemetry/Event;->oculus_vrshell_panelapp_dogfooding:Lcom/oculus/vrshell/panels/telemetry/Event;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->$VALUES:[Lcom/oculus/vrshell/panels/telemetry/Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/panels/telemetry/Event;
    .locals 1

    .line 5
    const-class v0, Lcom/oculus/vrshell/panels/telemetry/Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/panels/telemetry/Event;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/panels/telemetry/Event;
    .locals 1

    .line 5
    sget-object v0, Lcom/oculus/vrshell/panels/telemetry/Event;->$VALUES:[Lcom/oculus/vrshell/panels/telemetry/Event;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/panels/telemetry/Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/panels/telemetry/Event;

    return-object v0
.end method
