.class public final Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/util/PackageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageVersion"
.end annotation


# instance fields
.field public final versionCode:I

.field public final versionJoined:Ljava/lang/String;

.field public final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;->versionCode:I

    .line 61
    iput-object p2, p0, Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;->versionName:Ljava/lang/String;

    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s.%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/vrshell/util/PackageUtil$PackageVersion;->versionJoined:Ljava/lang/String;

    return-void
.end method
