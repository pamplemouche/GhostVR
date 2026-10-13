.class public final enum Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;
.super Ljava/lang/Enum;
.source "AndroidPanelLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/panels/AndroidPanelLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResizeBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

.field public static final enum NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

.field public static final enum WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

.field public static final enum WRAP_CONTENT_WIDTH:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

.field public static final enum WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 73
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    .line 74
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    const/4 v2, 0x1

    const-string v3, "WRAP_CONTENT_WIDTH"

    invoke-direct {v0, v3, v2}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    .line 75
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    const/4 v3, 0x2

    const-string v4, "WRAP_CONTENT_HEIGHT"

    invoke-direct {v0, v4, v3}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    .line 76
    new-instance v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    const/4 v4, 0x3

    const-string v5, "WRAP_CONTENT_WIDTH_HEIGHT"

    invoke-direct {v0, v5, v4}, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    const/4 v0, 0x4

    .line 72
    new-array v0, v0, [Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    sget-object v5, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->NONE:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    aput-object v5, v0, v1

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->WRAP_CONTENT_WIDTH_HEIGHT:Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->$VALUES:[Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;
    .locals 1

    .line 72
    const-class v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;
    .locals 1

    .line 72
    sget-object v0, Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->$VALUES:[Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/panels/AndroidPanelLayer$ResizeBehavior;

    return-object v0
.end method
