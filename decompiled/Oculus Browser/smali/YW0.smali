.class public LYW0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final b:LGW;

.field public static final c:LFW;

.field public static final d:LFW;

.field public static final e:LFW;

.field public static final f:LFW;

.field public static final g:LFW;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LXW0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LXW0;-><init>(LWW0;)V

    sput-object v0, LYW0;->b:LGW;

    .line 2
    sget-object v0, LFW;->k:LFW;

    sget-object v1, LYW0;->b:LGW;

    new-instance v2, LYW0;

    invoke-direct {v2}, LYW0;-><init>()V

    .line 3
    invoke-virtual {v0, v1, v2}, LFW;->a(LGW;Ljava/lang/Object;)LFW;

    move-result-object v0

    sput-object v0, LYW0;->c:LFW;

    .line 4
    sget-object v0, LFW;->k:LFW;

    sget-object v1, LYW0;->b:LGW;

    new-instance v2, LYW0;

    invoke-direct {v2}, LYW0;-><init>()V

    const/4 v3, 0x1

    .line 5
    iput v3, v2, LYW0;->a:I

    .line 6
    invoke-virtual {v0, v1, v2}, LFW;->a(LGW;Ljava/lang/Object;)LFW;

    move-result-object v0

    sput-object v0, LYW0;->d:LFW;

    .line 7
    sget-object v0, LYW0;->c:LFW;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LFW;->a(I)LFW;

    move-result-object v0

    sput-object v0, LYW0;->e:LFW;

    .line 8
    sget-object v0, LYW0;->c:LFW;

    invoke-virtual {v0, v3}, LFW;->a(I)LFW;

    move-result-object v0

    sput-object v0, LYW0;->f:LFW;

    .line 9
    sget-object v0, LYW0;->c:LFW;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LFW;->a(I)LFW;

    move-result-object v0

    sput-object v0, LYW0;->g:LFW;

    .line 10
    invoke-static {}, LG01;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LYW0;->a:I

    return-void
.end method
