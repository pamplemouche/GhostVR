.class public final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "ThinDownloadManager"

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->b:Z

    return-void
.end method

.method public static b(Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
