.class final enum Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;
.super Ljava/lang/Enum;
.source "ProfilePictureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

.field public static final enum CROP_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

.field public static final enum NEED_CAMERA_PERMISSION:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

.field public static final enum TAKE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

.field public static final enum USE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    const-string v1, "NEED_CAMERA_PERMISSION"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->NEED_CAMERA_PERMISSION:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    .line 105
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    const-string v1, "TAKE_PICTURE"

    invoke-direct {v0, v1, v3}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->TAKE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    .line 108
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    const-string v1, "CROP_PICTURE"

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->CROP_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    .line 111
    new-instance v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    const-string v1, "USE_PICTURE"

    invoke-direct {v0, v1, v5}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->USE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    .line 99
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    sget-object v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->NEED_CAMERA_PERMISSION:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->TAKE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->CROP_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->USE_PICTURE:Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->$VALUES:[Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->$VALUES:[Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    invoke-virtual {v0}, [Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/legacy/social/fragments/ProfilePictureFragment$DisplayMode;

    return-object v0
.end method
