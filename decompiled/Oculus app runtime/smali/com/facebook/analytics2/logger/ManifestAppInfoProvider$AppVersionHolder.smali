.class Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;
.super Ljava/lang/Object;
.source "ManifestAppInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/ManifestAppInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppVersionHolder"
.end annotation


# instance fields
.field public final version:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;->version:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;->versionCode:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/facebook/analytics2/logger/ManifestAppInfoProvider$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/facebook/analytics2/logger/ManifestAppInfoProvider$AppVersionHolder;-><init>(Ljava/lang/String;I)V

    return-void
.end method
