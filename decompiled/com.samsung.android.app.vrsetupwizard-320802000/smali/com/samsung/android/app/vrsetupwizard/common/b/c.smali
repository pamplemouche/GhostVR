.class public Lcom/samsung/android/app/vrsetupwizard/common/b/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/common/b/c;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/c;->a:I

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/vrsetupwizard/common/b/c;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/c;->b:I

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/vrsetupwizard/common/b/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/vrsetupwizard/common/b/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/c;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/vrsetupwizard/common/b/a;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/b/c;Lcom/samsung/android/app/vrsetupwizard/common/b/b;)V

    return-object v0
.end method

.method public a(I)Lcom/samsung/android/app/vrsetupwizard/common/b/c;
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/c;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/android/app/vrsetupwizard/common/b/c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/app/vrsetupwizard/common/b/c;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/c;->d:Ljava/lang/String;

    return-object p0
.end method
