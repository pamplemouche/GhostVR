.class public Lcom/samsung/android/app/vrsetupwizard/common/c/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->a(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->b(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->a:Z

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->c(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->d(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->d:I

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->e(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->e:Z

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->f(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->f:Z

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->g(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/c/i;Lcom/samsung/android/app/vrsetupwizard/common/c/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/g;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/vrsetupwizard/common/c/g;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/c/h;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->a()Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    move-result-object v0

    return-object v0
.end method
