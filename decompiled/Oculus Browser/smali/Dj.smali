.class public abstract LDj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lom;

.field public static final b:Lym;

.field public static final c:Lxj;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LRl;

    invoke-direct {v0}, LRl;-><init>()V

    sput-object v0, LDj;->a:Lom;

    .line 2
    new-instance v1, Lym;

    sget-object v2, LIs;->a:Lxm;

    const-string v3, "Cast.API"

    invoke-direct {v1, v3, v0, v2}, Lym;-><init>(Ljava/lang/String;Lom;Lxm;)V

    sput-object v1, LDj;->b:Lym;

    .line 3
    new-instance v0, Lwj;

    invoke-direct {v0}, Lwj;-><init>()V

    sput-object v0, LDj;->c:Lxj;

    return-void
.end method
