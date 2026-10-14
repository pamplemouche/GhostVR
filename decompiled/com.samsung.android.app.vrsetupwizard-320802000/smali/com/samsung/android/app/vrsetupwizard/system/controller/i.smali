.class Lcom/samsung/android/app/vrsetupwizard/system/controller/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/vrsetupwizard/system/controller/m;


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;Lcom/samsung/android/app/vrsetupwizard/system/controller/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/i;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AdapterStateChangedHandler state : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/common/c/f;->b(Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/controller/i;->a:Lcom/samsung/android/app/vrsetupwizard/system/controller/a;

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/controller/a;->b(Lcom/samsung/android/app/vrsetupwizard/system/controller/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/controller/n;->a_(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
