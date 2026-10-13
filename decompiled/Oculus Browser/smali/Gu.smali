.class public abstract LGu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lxm;

.field public static final b:Lxm;

.field public static final c:Lom;

.field public static final d:Lom;

.field public static final e:Lym;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lxm;

    invoke-direct {v0}, Lxm;-><init>()V

    sput-object v0, LGu;->a:Lxm;

    new-instance v0, Lxm;

    invoke-direct {v0}, Lxm;-><init>()V

    sput-object v0, LGu;->b:Lxm;

    new-instance v0, LTu;

    invoke-direct {v0}, LTu;-><init>()V

    sput-object v0, LGu;->c:Lom;

    new-instance v0, LUu;

    invoke-direct {v0}, LUu;-><init>()V

    sput-object v0, LGu;->d:Lom;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lym;

    sget-object v1, LGu;->c:Lom;

    sget-object v2, LGu;->a:Lxm;

    const-string v3, "SignIn.API"

    invoke-direct {v0, v3, v1, v2}, Lym;-><init>(Ljava/lang/String;Lom;Lxm;)V

    sput-object v0, LGu;->e:Lym;

    sget-object v0, LGu;->d:Lom;

    sget-object v1, LGu;->b:Lxm;

    const-string v2, "Cannot construct an Api with a null ClientBuilder"

    .line 1
    invoke-static {v0, v2}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {v1, v0}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
