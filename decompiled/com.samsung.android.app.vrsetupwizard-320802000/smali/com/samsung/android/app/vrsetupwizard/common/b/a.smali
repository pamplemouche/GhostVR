.class public Lcom/samsung/android/app/vrsetupwizard/common/b/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/b/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/c;->a(Lcom/samsung/android/app/vrsetupwizard/common/b/c;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->a:I

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/c;->b(Lcom/samsung/android/app/vrsetupwizard/common/b/c;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->b:I

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/c;->c(Lcom/samsung/android/app/vrsetupwizard/common/b/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/c;->d(Lcom/samsung/android/app/vrsetupwizard/common/b/c;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/b/c;Lcom/samsung/android/app/vrsetupwizard/common/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/common/b/a;-><init>(Lcom/samsung/android/app/vrsetupwizard/common/b/c;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Address : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bondstate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " connectstate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/b/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
