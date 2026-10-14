.class Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:I

.field final synthetic e:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;->e:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    iput-wide p3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;->b:J

    iput-wide p5, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;->c:J

    iput p7, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->e()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->e()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    iget-wide v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;->b:J

    iget-wide v5, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;->c:J

    iget v7, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;->d:I

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/l;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;JJI)V

    :cond_0
    return-void
.end method
