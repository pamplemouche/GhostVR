.class public final Lb/at;
.super Ljava/lang/Object;


# instance fields
.field A:I

.field a:Lb/w;

.field b:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/au;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/r;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/al;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/al;",
            ">;"
        }
    .end annotation
.end field

.field g:Lb/ac;

.field h:Ljava/net/ProxySelector;

.field i:Lb/u;

.field j:Lb/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:Lb/a/a/i;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field l:Ljavax/net/SocketFactory;

.field m:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field n:Lb/a/i/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field o:Ljavax/net/ssl/HostnameVerifier;

.field p:Lb/j;

.field q:Lb/b;

.field r:Lb/b;

.field s:Lb/p;

.field t:Lb/x;

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:I

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/at;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/at;->f:Ljava/util/List;

    new-instance v0, Lb/w;

    invoke-direct {v0}, Lb/w;-><init>()V

    iput-object v0, p0, Lb/at;->a:Lb/w;

    sget-object v0, Lb/ar;->a:Ljava/util/List;

    iput-object v0, p0, Lb/at;->c:Ljava/util/List;

    sget-object v0, Lb/ar;->b:Ljava/util/List;

    iput-object v0, p0, Lb/at;->d:Ljava/util/List;

    sget-object v0, Lb/z;->a:Lb/z;

    invoke-static {v0}, Lb/z;->a(Lb/z;)Lb/ac;

    move-result-object v0

    iput-object v0, p0, Lb/at;->g:Lb/ac;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lb/at;->h:Ljava/net/ProxySelector;

    sget-object v0, Lb/u;->a:Lb/u;

    iput-object v0, p0, Lb/at;->i:Lb/u;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lb/at;->l:Ljavax/net/SocketFactory;

    sget-object v0, Lb/a/i/d;->a:Lb/a/i/d;

    iput-object v0, p0, Lb/at;->o:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lb/j;->a:Lb/j;

    iput-object v0, p0, Lb/at;->p:Lb/j;

    sget-object v0, Lb/b;->a:Lb/b;

    iput-object v0, p0, Lb/at;->q:Lb/b;

    sget-object v0, Lb/b;->a:Lb/b;

    iput-object v0, p0, Lb/at;->r:Lb/b;

    new-instance v0, Lb/p;

    invoke-direct {v0}, Lb/p;-><init>()V

    iput-object v0, p0, Lb/at;->s:Lb/p;

    sget-object v0, Lb/x;->a:Lb/x;

    iput-object v0, p0, Lb/at;->t:Lb/x;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/at;->u:Z

    iput-boolean v0, p0, Lb/at;->v:Z

    iput-boolean v0, p0, Lb/at;->w:Z

    const/16 v0, 0x2710

    iput v0, p0, Lb/at;->x:I

    iput v0, p0, Lb/at;->y:I

    iput v0, p0, Lb/at;->z:I

    const/4 v0, 0x0

    iput v0, p0, Lb/at;->A:I

    return-void
.end method


# virtual methods
.method public a()Lb/ar;
    .locals 1

    new-instance v0, Lb/ar;

    invoke-direct {v0, p0}, Lb/ar;-><init>(Lb/at;)V

    return-object v0
.end method

.method public a(Lb/al;)Lb/at;
    .locals 1

    iget-object v0, p0, Lb/at;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
