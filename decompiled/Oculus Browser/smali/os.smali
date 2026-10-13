.class public final Los;
.super LDm;
.source "PG"


# static fields
.field public static final i:Lxm;

.field public static final j:Lom;

.field public static final k:Lym;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lxm;

    invoke-direct {v0}, Lxm;-><init>()V

    sput-object v0, Los;->i:Lxm;

    .line 2
    new-instance v0, Lps;

    invoke-direct {v0}, Lps;-><init>()V

    sput-object v0, Los;->j:Lom;

    .line 3
    new-instance v1, Lym;

    sget-object v2, Los;->i:Lxm;

    const-string v3, "CastApi.API"

    invoke-direct {v1, v3, v0, v2}, Lym;-><init>(Ljava/lang/String;Lom;Lxm;)V

    sput-object v1, Los;->k:Lym;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Los;->k:Lym;

    sget-object v1, LCm;->c:LCm;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, LDm;-><init>(Landroid/content/Context;Lym;Lum;LCm;)V

    return-void
.end method
