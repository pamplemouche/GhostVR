.class public final enum Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;
.super Ljava/lang/Enum;
.source "ProfilePictureHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

.field public static final enum INVITE_RECEIVED:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

.field public static final enum INVITE_SENT:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

.field public static final enum NORMAL:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;


# instance fields
.field private final mImplementationRenderFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 436
    new-instance v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1, v1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->NORMAL:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    .line 437
    new-instance v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    const/4 v2, 0x1

    const-string v3, "INVITE_SENT"

    invoke-direct {v0, v3, v2, v2}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->INVITE_SENT:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    .line 438
    new-instance v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    const/4 v3, 0x2

    const-string v4, "INVITE_RECEIVED"

    invoke-direct {v0, v4, v3, v1}, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->INVITE_RECEIVED:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    const/4 v0, 0x3

    .line 435
    new-array v0, v0, [Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    sget-object v4, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->NORMAL:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->INVITE_SENT:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->INVITE_RECEIVED:Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->$VALUES:[Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 443
    iput p3, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->mImplementationRenderFlags:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;
    .locals 1

    .line 435
    const-class v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    return-object p0
.end method

.method public static values()[Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;
    .locals 1

    .line 435
    sget-object v0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->$VALUES:[Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    invoke-virtual {v0}, [Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;

    return-object v0
.end method


# virtual methods
.method public getImplementationRenderFlags()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/oculus/panelapp/anytimeui/ProfilePictureHelper$RenderFlags;->mImplementationRenderFlags:I

    return v0
.end method
