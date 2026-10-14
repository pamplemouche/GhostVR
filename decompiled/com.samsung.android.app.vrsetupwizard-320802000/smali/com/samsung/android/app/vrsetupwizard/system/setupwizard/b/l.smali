.class final Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Lb/al;


# static fields
.field public static final a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/l;

    invoke-direct {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/l;-><init>()V

    sput-object v0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/l;->a:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/b/l;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/am;)Lb/bc;
    .locals 3

    invoke-interface {p1}, Lb/am;->a()Lb/ax;

    move-result-object v0

    invoke-virtual {v0}, Lb/ax;->e()Lb/ay;

    move-result-object v0

    const-string v1, "x-vas-auth-appId"

    const-string v2, "2ni9rof435"

    invoke-virtual {v0, v1, v2}, Lb/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->a:Ljava/lang/String;

    const-string v2, "x-vas-auth-token"

    invoke-virtual {v0, v2, v1}, Lb/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/k;->b:Ljava/lang/String;

    const-string v2, "x-vas-auth-url"

    invoke-virtual {v0, v2, v1}, Lb/ay;->b(Ljava/lang/String;Ljava/lang/String;)Lb/ay;

    move-result-object v0

    invoke-virtual {v0}, Lb/ay;->a()Lb/ax;

    move-result-object v0

    const-string v1, "chain.request().newBuild\u2026                 .build()"

    invoke-static {v0, v1}, La/c/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lb/am;->a(Lb/ax;)Lb/bc;

    move-result-object p1

    return-object p1
.end method
