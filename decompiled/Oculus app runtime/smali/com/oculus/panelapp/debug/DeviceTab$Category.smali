.class final enum Lcom/oculus/panelapp/debug/DeviceTab$Category;
.super Ljava/lang/Enum;
.source "DeviceTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/DeviceTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/debug/DeviceTab$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/debug/DeviceTab$Category;

.field public static final enum APP_VERSIONS:Lcom/oculus/panelapp/debug/DeviceTab$Category;

.field public static final enum BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

.field public static final enum GUARDIAN:Lcom/oculus/panelapp/debug/DeviceTab$Category;

.field public static final enum NETWORK:Lcom/oculus/panelapp/debug/DeviceTab$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 195
    new-instance v0, Lcom/oculus/panelapp/debug/DeviceTab$Category;

    const/4 v1, 0x0

    const-string v2, "BUILD"

    invoke-direct {v0, v2, v1}, Lcom/oculus/panelapp/debug/DeviceTab$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    .line 196
    new-instance v0, Lcom/oculus/panelapp/debug/DeviceTab$Category;

    const/4 v2, 0x1

    const-string v3, "APP_VERSIONS"

    invoke-direct {v0, v3, v2}, Lcom/oculus/panelapp/debug/DeviceTab$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/debug/DeviceTab$Category;->APP_VERSIONS:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    .line 197
    new-instance v0, Lcom/oculus/panelapp/debug/DeviceTab$Category;

    const/4 v3, 0x2

    const-string v4, "NETWORK"

    invoke-direct {v0, v4, v3}, Lcom/oculus/panelapp/debug/DeviceTab$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/debug/DeviceTab$Category;->NETWORK:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    .line 198
    new-instance v0, Lcom/oculus/panelapp/debug/DeviceTab$Category;

    const/4 v4, 0x3

    const-string v5, "GUARDIAN"

    invoke-direct {v0, v5, v4}, Lcom/oculus/panelapp/debug/DeviceTab$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/panelapp/debug/DeviceTab$Category;->GUARDIAN:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    const/4 v0, 0x4

    .line 194
    new-array v0, v0, [Lcom/oculus/panelapp/debug/DeviceTab$Category;

    sget-object v5, Lcom/oculus/panelapp/debug/DeviceTab$Category;->BUILD:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oculus/panelapp/debug/DeviceTab$Category;->APP_VERSIONS:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/debug/DeviceTab$Category;->NETWORK:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/panelapp/debug/DeviceTab$Category;->GUARDIAN:Lcom/oculus/panelapp/debug/DeviceTab$Category;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/panelapp/debug/DeviceTab$Category;->$VALUES:[Lcom/oculus/panelapp/debug/DeviceTab$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/debug/DeviceTab$Category;
    .locals 1

    .line 194
    const-class v0, Lcom/oculus/panelapp/debug/DeviceTab$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/debug/DeviceTab$Category;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/debug/DeviceTab$Category;
    .locals 1

    .line 194
    sget-object v0, Lcom/oculus/panelapp/debug/DeviceTab$Category;->$VALUES:[Lcom/oculus/panelapp/debug/DeviceTab$Category;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/debug/DeviceTab$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/debug/DeviceTab$Category;

    return-object v0
.end method
