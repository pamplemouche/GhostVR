.class final Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/aa;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/w;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b_(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/w;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    const/4 v1, 0x0

    const/16 v2, 0x1cc

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/o;->l(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->a(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;Z)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/w;->a:Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;->b(Lcom/samsung/android/app/vrsetupwizard/ui/setupwizard/WarningAgreeActivity;)V

    return-void
.end method
