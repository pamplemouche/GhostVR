.class public final enum Lcom/facebook/fbuploader/Config$Namespace;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Namespace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/fbuploader/Config$Namespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum AUTHENTICITY:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum DEFAULT:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum FACEBOOK:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum FACEBOOK_VIDEO2:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum FBLITE_PHOTO:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum FLASH:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum GRAPHQL:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum GROUPS:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum HALO_CROWDSOURCING:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum INSTAGRAM_PHOTO:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum INSTAGRAM_VIDEO:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum MESSENGER:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum MESSENGER_ANIMATED_IMAGE:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum MESSENGER_AUDIO:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum MESSENGER_FILE:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum MESSENGER_IMAGE:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum MESSENGER_VIDEO:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum MESSENGER_VIDEO_SEGMENTED:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum OCULUS_CLOUD_STORAGE:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum PAGES_MANAGER:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum RELIABILITY_EVENT_LOG:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum RTC_PHOTOBOOTH:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum RTC_SNAPSHOT:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum SPUTNIK_PHOTO:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum SPUTNIK_VIDEO:Lcom/facebook/fbuploader/Config$Namespace;

.field public static final enum TVMETER:Lcom/facebook/fbuploader/Config$Namespace;


# instance fields
.field private final mJsonResponseFieldType:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

.field private final mUriPathElement:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "DEFAULT"

    const-string v2, "up"

    sget-object v3, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->DEFAULT:Lcom/facebook/fbuploader/Config$Namespace;

    .line 28
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "MESSENGER"

    const-string v2, "up"

    sget-object v3, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER:Lcom/facebook/fbuploader/Config$Namespace;

    .line 29
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "MESSENGER_IMAGE"

    const-string v2, "messenger_image"

    sget-object v3, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_IMAGE:Lcom/facebook/fbuploader/Config$Namespace;

    .line 30
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "MESSENGER_ANIMATED_IMAGE"

    const-string v2, "messenger_gif"

    sget-object v3, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_ANIMATED_IMAGE:Lcom/facebook/fbuploader/Config$Namespace;

    .line 31
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "MESSENGER_VIDEO"

    const-string v2, "messenger_video"

    sget-object v3, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_VIDEO:Lcom/facebook/fbuploader/Config$Namespace;

    .line 32
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "MESSENGER_VIDEO_SEGMENTED"

    const/4 v2, 0x5

    const-string v3, "messenger_videos"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_VIDEO_SEGMENTED:Lcom/facebook/fbuploader/Config$Namespace;

    .line 33
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "MESSENGER_AUDIO"

    const/4 v2, 0x6

    const-string v3, "messenger_audio"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_AUDIO:Lcom/facebook/fbuploader/Config$Namespace;

    .line 34
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "MESSENGER_FILE"

    const/4 v2, 0x7

    const-string v3, "messenger_file"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_FILE:Lcom/facebook/fbuploader/Config$Namespace;

    .line 35
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "FACEBOOK"

    const/16 v2, 0x8

    const-string v3, "fb_video"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->FACEBOOK:Lcom/facebook/fbuploader/Config$Namespace;

    .line 36
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "FACEBOOK_VIDEO2"

    const/16 v2, 0x9

    const-string v3, "fb_video2"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->FACEBOOK_VIDEO2:Lcom/facebook/fbuploader/Config$Namespace;

    .line 37
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "FBLITE_PHOTO"

    const/16 v2, 0xa

    const-string v3, "fb_lite_photo"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->FBLITE_PHOTO:Lcom/facebook/fbuploader/Config$Namespace;

    .line 38
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "INSTAGRAM_VIDEO"

    const/16 v2, 0xb

    const-string v3, "rupload_igvideo"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->INSTAGRAM_VIDEO:Lcom/facebook/fbuploader/Config$Namespace;

    .line 39
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "INSTAGRAM_PHOTO"

    const/16 v2, 0xc

    const-string v3, "rupload_igphoto"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->INSTAGRAM_PHOTO:Lcom/facebook/fbuploader/Config$Namespace;

    .line 40
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "GRAPHQL"

    const/16 v2, 0xd

    const-string v3, "graphql_mutations"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->GRAPHQL:Lcom/facebook/fbuploader/Config$Namespace;

    .line 41
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "GROUPS"

    const/16 v2, 0xe

    const-string v3, "groups"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->GROUPS:Lcom/facebook/fbuploader/Config$Namespace;

    .line 42
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "FLASH"

    const/16 v2, 0xf

    const-string v3, "flash"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->FLASH:Lcom/facebook/fbuploader/Config$Namespace;

    .line 43
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "SPUTNIK_PHOTO"

    const/16 v2, 0x10

    const-string v3, "sputnik_photo"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->SPUTNIK_PHOTO:Lcom/facebook/fbuploader/Config$Namespace;

    .line 44
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "SPUTNIK_VIDEO"

    const/16 v2, 0x11

    const-string v3, "sputnik_video"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->SPUTNIK_VIDEO:Lcom/facebook/fbuploader/Config$Namespace;

    .line 45
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "RTC_PHOTOBOOTH"

    const/16 v2, 0x12

    const-string v3, "messenger_image"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->CDN_URL:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->RTC_PHOTOBOOTH:Lcom/facebook/fbuploader/Config$Namespace;

    .line 46
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "RTC_SNAPSHOT"

    const/16 v2, 0x13

    const-string v3, "up"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->RTC_SNAPSHOT:Lcom/facebook/fbuploader/Config$Namespace;

    .line 47
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "TVMETER"

    const/16 v2, 0x14

    const-string v3, "tvmeter"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->TVMETER:Lcom/facebook/fbuploader/Config$Namespace;

    .line 48
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "OCULUS_CLOUD_STORAGE"

    const/16 v2, 0x15

    const-string v3, "oculus_cloud_storage"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->OCULUS_CLOUD_STORAGE:Lcom/facebook/fbuploader/Config$Namespace;

    .line 49
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "PAGES_MANAGER"

    const/16 v2, 0x16

    const-string v3, "pma"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->PAGES_MANAGER:Lcom/facebook/fbuploader/Config$Namespace;

    .line 50
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "RELIABILITY_EVENT_LOG"

    const/16 v2, 0x17

    const-string v3, "reliability_event_log"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->MEDIA_ID:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->RELIABILITY_EVENT_LOG:Lcom/facebook/fbuploader/Config$Namespace;

    .line 51
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "AUTHENTICITY"

    const/16 v2, 0x18

    const-string v3, "authenticity_upload"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->AUTHENTICITY:Lcom/facebook/fbuploader/Config$Namespace;

    .line 52
    new-instance v0, Lcom/facebook/fbuploader/Config$Namespace;

    const-string v1, "HALO_CROWDSOURCING"

    const/16 v2, 0x19

    const-string v3, "halo_crowdsourcing"

    sget-object v4, Lcom/facebook/fbuploader/Config$UploadResponseFieldType;->HANDLE:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/fbuploader/Config$Namespace;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->HALO_CROWDSOURCING:Lcom/facebook/fbuploader/Config$Namespace;

    .line 26
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/facebook/fbuploader/Config$Namespace;

    sget-object v1, Lcom/facebook/fbuploader/Config$Namespace;->DEFAULT:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_IMAGE:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_ANIMATED_IMAGE:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_VIDEO:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_VIDEO_SEGMENTED:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_AUDIO:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->MESSENGER_FILE:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->FACEBOOK:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->FACEBOOK_VIDEO2:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->FBLITE_PHOTO:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->INSTAGRAM_VIDEO:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->INSTAGRAM_PHOTO:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->GRAPHQL:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->GROUPS:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->FLASH:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->SPUTNIK_PHOTO:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->SPUTNIK_VIDEO:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->RTC_PHOTOBOOTH:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->RTC_SNAPSHOT:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->TVMETER:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->OCULUS_CLOUD_STORAGE:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->PAGES_MANAGER:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->RELIABILITY_EVENT_LOG:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->AUTHENTICITY:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/facebook/fbuploader/Config$Namespace;->HALO_CROWDSOURCING:Lcom/facebook/fbuploader/Config$Namespace;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/fbuploader/Config$Namespace;->$VALUES:[Lcom/facebook/fbuploader/Config$Namespace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/fbuploader/Config$UploadResponseFieldType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/fbuploader/Config$UploadResponseFieldType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/facebook/fbuploader/Config$Namespace;->mUriPathElement:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/facebook/fbuploader/Config$Namespace;->mJsonResponseFieldType:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/fbuploader/Config$Namespace;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/fbuploader/Config$Namespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/fbuploader/Config$Namespace;

    return-object v0
.end method

.method public static values()[Lcom/facebook/fbuploader/Config$Namespace;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/fbuploader/Config$Namespace;->$VALUES:[Lcom/facebook/fbuploader/Config$Namespace;

    invoke-virtual {v0}, [Lcom/facebook/fbuploader/Config$Namespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/fbuploader/Config$Namespace;

    return-object v0
.end method


# virtual methods
.method public getJsonResponseFieldType()Lcom/facebook/fbuploader/Config$UploadResponseFieldType;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Namespace;->mJsonResponseFieldType:Lcom/facebook/fbuploader/Config$UploadResponseFieldType;

    return-object v0
.end method

.method public getUriPathElement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$Namespace;->mUriPathElement:Ljava/lang/String;

    return-object v0
.end method
