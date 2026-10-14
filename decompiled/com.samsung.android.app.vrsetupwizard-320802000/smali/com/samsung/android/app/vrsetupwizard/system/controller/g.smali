.class Lcom/samsung/android/app/vrsetupwizard/system/controller/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/controller/f;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/controller/f;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/g;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/g;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/f;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/system/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/g;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/f;

    iget-object v0, v0, Lcom/samsung/android/app/vrsetupwizard/system/controller/f;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-virtual {v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b()V

    return-void
.end method
