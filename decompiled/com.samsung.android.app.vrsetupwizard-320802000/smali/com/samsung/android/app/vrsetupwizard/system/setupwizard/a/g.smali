.class Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/h;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/i;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/j;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;JJI)V
    .locals 11

    move-object v8, p0

    iget-object v9, v8, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;->b:Ljava/util/concurrent/Executor;

    new-instance v10, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/k;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;JJI)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
