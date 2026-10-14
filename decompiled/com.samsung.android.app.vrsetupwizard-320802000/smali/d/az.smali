.class final Ld/az;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final b:Ljava/util/regex/Pattern;


# instance fields
.field final c:Lb/h;

.field final d:Ld/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/h<",
            "TR;TT;>;"
        }
    .end annotation
.end field

.field private final e:Lb/ai;

.field private final f:Ld/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/k<",
            "Lb/be;",
            "TR;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lb/ag;

.field private final j:Lb/an;

.field private final k:Z

.field private final l:Z

.field private final m:Z

.field private final n:[Ld/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ld/z<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ld/az;->a:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ld/az;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ld/ba;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/ba<",
            "TR;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ld/ba;->a:Ld/aw;

    invoke-virtual {v0}, Ld/aw;->a()Lb/h;

    move-result-object v0

    iput-object v0, p0, Ld/az;->c:Lb/h;

    iget-object v0, p1, Ld/ba;->w:Ld/h;

    iput-object v0, p0, Ld/az;->d:Ld/h;

    iget-object v0, p1, Ld/ba;->a:Ld/aw;

    invoke-virtual {v0}, Ld/aw;->b()Lb/ai;

    move-result-object v0

    iput-object v0, p0, Ld/az;->e:Lb/ai;

    iget-object v0, p1, Ld/ba;->v:Ld/k;

    iput-object v0, p0, Ld/az;->f:Ld/k;

    iget-object v0, p1, Ld/ba;->m:Ljava/lang/String;

    iput-object v0, p0, Ld/az;->g:Ljava/lang/String;

    iget-object v0, p1, Ld/ba;->q:Ljava/lang/String;

    iput-object v0, p0, Ld/az;->h:Ljava/lang/String;

    iget-object v0, p1, Ld/ba;->r:Lb/ag;

    iput-object v0, p0, Ld/az;->i:Lb/ag;

    iget-object v0, p1, Ld/ba;->s:Lb/an;

    iput-object v0, p0, Ld/az;->j:Lb/an;

    iget-boolean v0, p1, Ld/ba;->n:Z

    iput-boolean v0, p0, Ld/az;->k:Z

    iget-boolean v0, p1, Ld/ba;->o:Z

    iput-boolean v0, p0, Ld/az;->l:Z

    iget-boolean v0, p1, Ld/ba;->p:Z

    iput-boolean v0, p0, Ld/az;->m:Z

    iget-object p1, p1, Ld/ba;->u:[Ld/z;

    iput-object p1, p0, Ld/az;->n:[Ld/z;

    return-void
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Byte;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Character;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Short;

    :cond_7
    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Ld/az;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method varargs a([Ljava/lang/Object;)Lb/ax;
    .locals 10
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v9, Ld/at;

    iget-object v1, p0, Ld/az;->g:Ljava/lang/String;

    iget-object v2, p0, Ld/az;->e:Lb/ai;

    iget-object v3, p0, Ld/az;->h:Ljava/lang/String;

    iget-object v4, p0, Ld/az;->i:Lb/ag;

    iget-object v5, p0, Ld/az;->j:Lb/an;

    iget-boolean v6, p0, Ld/az;->k:Z

    iget-boolean v7, p0, Ld/az;->l:Z

    iget-boolean v8, p0, Ld/az;->m:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ld/at;-><init>(Ljava/lang/String;Lb/ai;Ljava/lang/String;Lb/ag;Lb/an;ZZZ)V

    iget-object v0, p0, Ld/az;->n:[Ld/z;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ne v2, v3, :cond_2

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    aget-object v4, p1, v1

    invoke-virtual {v3, v9, v4}, Ld/z;->a(Ld/at;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Ld/at;->a()Lb/ax;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument count ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") doesn\'t match expected count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lb/be;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/be;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/az;->f:Ld/k;

    invoke-interface {v0, p1}, Ld/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
