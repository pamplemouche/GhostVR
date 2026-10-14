.class Lcom/samsung/android/app/vrsetupwizard/ui/settings/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/o;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[UpdateSettingPreference] auto update value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->f(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    const-string v0, "initial_app_auto_update"

    const-string v1, "0018"

    const-string v2, "536"

    if-nez p1, :cond_0

    const-string p1, "Off"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/common/c/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p1, "On"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/app/vrsetupwizard/common/c/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/ui/settings/k;->a:Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;

    iget-object p1, p1, Lcom/samsung/android/app/vrsetupwizard/ui/settings/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/t;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :goto_0
    return p2
.end method
