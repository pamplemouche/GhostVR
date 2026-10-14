.class Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/c;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

.field final synthetic b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/c;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/c;->b:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/c;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->f()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/lang/String;)V

    return-void
.end method
