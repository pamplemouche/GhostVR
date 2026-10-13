.class public abstract Lsu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lxm;

.field public static final b:Lom;

.field public static final c:Lym;

.field public static final d:Lpu;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lxm;

    invoke-direct {v0}, Lxm;-><init>()V

    sput-object v0, Lsu;->a:Lxm;

    new-instance v0, Luu;

    invoke-direct {v0}, Luu;-><init>()V

    sput-object v0, Lsu;->b:Lom;

    new-instance v1, Lym;

    sget-object v2, Lsu;->a:Lxm;

    const-string v3, "LocationServices.API"

    invoke-direct {v1, v3, v0, v2}, Lym;-><init>(Ljava/lang/String;Lom;Lxm;)V

    sput-object v1, Lsu;->c:Lym;

    new-instance v0, LOt;

    invoke-direct {v0}, LOt;-><init>()V

    sput-object v0, Lsu;->d:Lpu;

    return-void
.end method
