.class final Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/c;
.super La/c/b/k;

# interfaces
.implements La/c/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/c/b/k;",
        "La/c/a/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, La/c/b/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/c;->a:Lcom/samsung/android/app/vrsetupwizard/common/ui/setupwizard/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
