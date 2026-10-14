.class public Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;


# instance fields
.field private a:I

.field private b:I

.field private final c:I

.field private final d:I

.field private final e:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x1388

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;-><init>(IIFI)V

    return-void
.end method

.method public constructor <init>(IIFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->a:I

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->c:I

    iput p3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->e:F

    iput p4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->d:I

    return v0
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/m;
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->b:I

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->a:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->e:F

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->a:I

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/m;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/m;-><init>()V

    throw v0
.end method

.method protected d()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->b:I

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
