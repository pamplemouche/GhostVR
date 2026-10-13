.class public final LIu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltm;


# static fields
.field public static final i:LIu;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/lang/Long;

.field public final h:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v10, LIu;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, LIu;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;LVu;)V

    .line 2
    sput-object v10, LIu;->i:LIu;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;LVu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LIu;->a:Z

    iput-boolean p2, p0, LIu;->b:Z

    iput-object p3, p0, LIu;->c:Ljava/lang/String;

    iput-boolean p4, p0, LIu;->d:Z

    iput-boolean p6, p0, LIu;->f:Z

    iput-object p5, p0, LIu;->e:Ljava/lang/String;

    iput-object p7, p0, LIu;->g:Ljava/lang/Long;

    iput-object p8, p0, LIu;->h:Ljava/lang/Long;

    return-void
.end method
