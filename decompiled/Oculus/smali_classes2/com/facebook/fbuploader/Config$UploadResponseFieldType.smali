.class public final enum Lcom/facebook/fbuploader/Config$UploadResponseFieldType;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadResponseFieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/fbuploader/Config$UploadResponseFieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

.field public static final enum CDN_URL:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

.field public static final enum HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

.field public static final enum MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    const-string v1, "CDN_URL"

    invoke-direct {v0, v1, v2}, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->CDN_URL:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    .line 22
    new-instance v0, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    const-string v1, "MEDIA_ID"

    invoke-direct {v0, v1, v3}, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    .line 23
    new-instance v0, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    const-string v1, "HANDLE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    sget-object v1, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->CDN_URL:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->$VALUES:[Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/fbuploader/Config$UploadResponseFieldType;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/fbuploader/Config$UploadResponseFieldType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->$VALUES:[Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-virtual {v0}, [Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    return-object v0
.end method
