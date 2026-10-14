.class public abstract Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;
.super Landroid/support/v4/view/aa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;->d()I

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;->d()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method

.method public final c(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;->b(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;->e()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public abstract d()I
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/launcher/g;->d()I

    move-result v0

    return v0
.end method
