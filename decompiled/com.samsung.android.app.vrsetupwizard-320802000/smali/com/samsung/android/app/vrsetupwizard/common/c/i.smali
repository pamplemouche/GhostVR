.class public Lcom/samsung/android/app/vrsetupwizard/common/c/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "VRSetupWizard/VRSW"

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->b:Z

    const-string v1, "(%s:%d) %s() [%s]"

    iput-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->c:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->d:I

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->e:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/c/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/vrsetupwizard/common/c/i;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->b:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->d:I

    return p0
.end method

.method static synthetic e(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->e:Z

    return p0
.end method

.method static synthetic f(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->f:Z

    return p0
.end method

.method static synthetic g(Lcom/samsung/android/app/vrsetupwizard/common/c/i;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/c/i;->g:Z

    return p0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/vrsetupwizard/common/c/g;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/c/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/g;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/c/i;Lcom/samsung/android/app/vrsetupwizard/common/c/h;)V

    return-object v0
.end method
