.class Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/h;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/h;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/f;

    iput-object p3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/h;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/h;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
