.class public final enum Lcom/oculus/horizon/libraryui/SavedCategory;
.super Ljava/lang/Enum;
.source "SavedCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/horizon/libraryui/SavedCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/horizon/libraryui/SavedCategory;

.field public static final enum APPS:Lcom/oculus/horizon/libraryui/SavedCategory;

.field public static final enum PHOTOS:Lcom/oculus/horizon/libraryui/SavedCategory;

.field public static final enum VIDEOS:Lcom/oculus/horizon/libraryui/SavedCategory;


# instance fields
.field private final mCategory:Ljava/lang/String;

.field private final mId:I

.field private final mNameStringRes:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/oculus/horizon/libraryui/SavedCategory;

    const-string v1, "APPS"

    sget v3, Lcom/oculus/horizon/R$string;->library_saved_category_apps:I

    const-string v4, "APP"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/libraryui/SavedCategory;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v0, Lcom/oculus/horizon/libraryui/SavedCategory;->APPS:Lcom/oculus/horizon/libraryui/SavedCategory;

    .line 10
    new-instance v3, Lcom/oculus/horizon/libraryui/SavedCategory;

    const-string v4, "VIDEOS"

    sget v6, Lcom/oculus/horizon/R$string;->library_saved_category_videos:I

    const-string v7, "VIDEO"

    move v5, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/oculus/horizon/libraryui/SavedCategory;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v3, Lcom/oculus/horizon/libraryui/SavedCategory;->VIDEOS:Lcom/oculus/horizon/libraryui/SavedCategory;

    .line 11
    new-instance v3, Lcom/oculus/horizon/libraryui/SavedCategory;

    const-string v4, "PHOTOS"

    sget v6, Lcom/oculus/horizon/R$string;->library_saved_category_photos:I

    const-string v7, "PHOTO"

    move v5, v10

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/oculus/horizon/libraryui/SavedCategory;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    sput-object v3, Lcom/oculus/horizon/libraryui/SavedCategory;->PHOTOS:Lcom/oculus/horizon/libraryui/SavedCategory;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/horizon/libraryui/SavedCategory;

    sget-object v1, Lcom/oculus/horizon/libraryui/SavedCategory;->APPS:Lcom/oculus/horizon/libraryui/SavedCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/horizon/libraryui/SavedCategory;->VIDEOS:Lcom/oculus/horizon/libraryui/SavedCategory;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/horizon/libraryui/SavedCategory;->PHOTOS:Lcom/oculus/horizon/libraryui/SavedCategory;

    aput-object v1, v0, v10

    sput-object v0, Lcom/oculus/horizon/libraryui/SavedCategory;->$VALUES:[Lcom/oculus/horizon/libraryui/SavedCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/oculus/horizon/libraryui/SavedCategory;->mNameStringRes:I

    .line 15
    iput-object p4, p0, Lcom/oculus/horizon/libraryui/SavedCategory;->mCategory:Ljava/lang/String;

    .line 16
    iput p5, p0, Lcom/oculus/horizon/libraryui/SavedCategory;->mId:I

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/horizon/libraryui/SavedCategory;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/oculus/horizon/libraryui/SavedCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/libraryui/SavedCategory;

    return-object v0
.end method

.method public static values()[Lcom/oculus/horizon/libraryui/SavedCategory;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oculus/horizon/libraryui/SavedCategory;->$VALUES:[Lcom/oculus/horizon/libraryui/SavedCategory;

    invoke-virtual {v0}, [Lcom/oculus/horizon/libraryui/SavedCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/horizon/libraryui/SavedCategory;

    return-object v0
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategory;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/oculus/horizon/libraryui/SavedCategory;->mId:I

    return v0
.end method

.method public getNameStringResource()I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .prologue
    .line 24
    iget v0, p0, Lcom/oculus/horizon/libraryui/SavedCategory;->mNameStringRes:I

    return v0
.end method
