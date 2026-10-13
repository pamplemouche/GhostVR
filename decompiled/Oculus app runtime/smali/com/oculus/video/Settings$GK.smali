.class public final enum Lcom/oculus/video/Settings$GK;
.super Ljava/lang/Enum;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/video/Settings$GK;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/video/Settings$GK;

.field public static final enum BLEND_MIXED360_MANIFEST:Lcom/oculus/video/Settings$GK;

.field public static final enum BLEND_SSIM360_MANIFEST:Lcom/oculus/video/Settings$GK;

.field public static final enum DISABLE_CACHE:Lcom/oculus/video/Settings$GK;

.field public static final enum ENABLE_GALLERY_VIRTUALIZATION:Lcom/oculus/video/Settings$GK;

.field public static final enum ENABLE_HOME_VIRTUALIZATION:Lcom/oculus/video/Settings$GK;

.field public static final enum USE_EXOPLAYER_FAST_SEEK:Lcom/oculus/video/Settings$GK;

.field private static gkNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oculus/video/Settings$GK;",
            ">;"
        }
    .end annotation
.end field

.field private static final gkStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oculus/video/Settings$GK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final defaultValue:Z

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 46
    new-instance v0, Lcom/oculus/video/Settings$GK;

    const/4 v1, 0x0

    const-string v2, "ENABLE_HOME_VIRTUALIZATION"

    const-string v3, "oculus_video_home_virtualization"

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/oculus/video/Settings$GK;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/oculus/video/Settings$GK;->ENABLE_HOME_VIRTUALIZATION:Lcom/oculus/video/Settings$GK;

    .line 47
    new-instance v0, Lcom/oculus/video/Settings$GK;

    const/4 v2, 0x1

    const-string v3, "ENABLE_GALLERY_VIRTUALIZATION"

    const-string v4, "oculus_video_enable_gallery_virtualization"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/oculus/video/Settings$GK;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/oculus/video/Settings$GK;->ENABLE_GALLERY_VIRTUALIZATION:Lcom/oculus/video/Settings$GK;

    .line 48
    new-instance v0, Lcom/oculus/video/Settings$GK;

    const/4 v3, 0x2

    const-string v4, "DISABLE_CACHE"

    const-string v5, "oculus_video_disable_cache"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/oculus/video/Settings$GK;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/oculus/video/Settings$GK;->DISABLE_CACHE:Lcom/oculus/video/Settings$GK;

    .line 49
    new-instance v0, Lcom/oculus/video/Settings$GK;

    const/4 v4, 0x3

    const-string v5, "BLEND_MIXED360_MANIFEST"

    const-string v6, "oculus_video_blend_mixed360_manifest"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/oculus/video/Settings$GK;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/oculus/video/Settings$GK;->BLEND_MIXED360_MANIFEST:Lcom/oculus/video/Settings$GK;

    .line 50
    new-instance v0, Lcom/oculus/video/Settings$GK;

    const/4 v5, 0x4

    const-string v6, "BLEND_SSIM360_MANIFEST"

    const-string v7, "oculus_video_blend_ssim360_manifest"

    invoke-direct {v0, v6, v5, v7, v1}, Lcom/oculus/video/Settings$GK;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/oculus/video/Settings$GK;->BLEND_SSIM360_MANIFEST:Lcom/oculus/video/Settings$GK;

    .line 51
    new-instance v0, Lcom/oculus/video/Settings$GK;

    const/4 v6, 0x5

    const-string v7, "USE_EXOPLAYER_FAST_SEEK"

    const-string v8, "oculus_video_use_exoplayer_fast_seek"

    invoke-direct {v0, v7, v6, v8, v1}, Lcom/oculus/video/Settings$GK;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/oculus/video/Settings$GK;->USE_EXOPLAYER_FAST_SEEK:Lcom/oculus/video/Settings$GK;

    const/4 v0, 0x6

    .line 44
    new-array v0, v0, [Lcom/oculus/video/Settings$GK;

    sget-object v7, Lcom/oculus/video/Settings$GK;->ENABLE_HOME_VIRTUALIZATION:Lcom/oculus/video/Settings$GK;

    aput-object v7, v0, v1

    sget-object v7, Lcom/oculus/video/Settings$GK;->ENABLE_GALLERY_VIRTUALIZATION:Lcom/oculus/video/Settings$GK;

    aput-object v7, v0, v2

    sget-object v2, Lcom/oculus/video/Settings$GK;->DISABLE_CACHE:Lcom/oculus/video/Settings$GK;

    aput-object v2, v0, v3

    sget-object v2, Lcom/oculus/video/Settings$GK;->BLEND_MIXED360_MANIFEST:Lcom/oculus/video/Settings$GK;

    aput-object v2, v0, v4

    sget-object v2, Lcom/oculus/video/Settings$GK;->BLEND_SSIM360_MANIFEST:Lcom/oculus/video/Settings$GK;

    aput-object v2, v0, v5

    sget-object v2, Lcom/oculus/video/Settings$GK;->USE_EXOPLAYER_FAST_SEEK:Lcom/oculus/video/Settings$GK;

    aput-object v2, v0, v6

    sput-object v0, Lcom/oculus/video/Settings$GK;->$VALUES:[Lcom/oculus/video/Settings$GK;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/video/Settings$GK;->gkNameMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oculus/video/Settings$GK;->gkStateMap:Ljava/util/HashMap;

    .line 59
    invoke-static {}, Lcom/oculus/video/Settings$GK;->values()[Lcom/oculus/video/Settings$GK;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 60
    sget-object v5, Lcom/oculus/video/Settings$GK;->gkNameMap:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/oculus/video/Settings$GK;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/oculus/video/Settings$GK;->values()[Lcom/oculus/video/Settings$GK;

    move-result-object v0

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 63
    sget-object v4, Lcom/oculus/video/Settings$GK;->gkStateMap:Ljava/util/HashMap;

    iget-boolean v5, v3, Lcom/oculus/video/Settings$GK;->defaultValue:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/oculus/video/Settings$GK;->name:Ljava/lang/String;

    .line 73
    iput-boolean p4, p0, Lcom/oculus/video/Settings$GK;->defaultValue:Z

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/oculus/video/Settings$GK;
    .locals 1

    .line 68
    sget-object v0, Lcom/oculus/video/Settings$GK;->gkNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oculus/video/Settings$GK;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/video/Settings$GK;
    .locals 1

    .line 44
    const-class v0, Lcom/oculus/video/Settings$GK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/video/Settings$GK;

    return-object p0
.end method

.method public static values()[Lcom/oculus/video/Settings$GK;
    .locals 1

    .line 44
    sget-object v0, Lcom/oculus/video/Settings$GK;->$VALUES:[Lcom/oculus/video/Settings$GK;

    invoke-virtual {v0}, [Lcom/oculus/video/Settings$GK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/video/Settings$GK;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/oculus/video/Settings$GK;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isOn()Z
    .locals 1

    .line 86
    sget-object v0, Lcom/oculus/video/Settings$GK;->gkStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 87
    sget-object v0, Lcom/oculus/video/Settings$GK;->gkStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public turnOn(Z)V
    .locals 1

    .line 81
    sget-object v0, Lcom/oculus/video/Settings$GK;->gkStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
