.class public final synthetic LDu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final A:LTQ0;

.field public final B:Lorg/chromium/base/Callback;

.field public final w:LGu0;

.field public final x:Lku0;

.field public final y:LTQ0;

.field public final z:LTQ0;


# direct methods
.method public constructor <init>(LGu0;Lku0;LTQ0;LTQ0;LTQ0;Lorg/chromium/base/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDu0;->w:LGu0;

    iput-object p2, p0, LDu0;->x:Lku0;

    iput-object p3, p0, LDu0;->y:LTQ0;

    iput-object p4, p0, LDu0;->z:LTQ0;

    iput-object p5, p0, LDu0;->A:LTQ0;

    iput-object p6, p0, LDu0;->B:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, LDu0;->w:LGu0;

    iget-object v1, p0, LDu0;->x:Lku0;

    iget-object v2, p0, LDu0;->y:LTQ0;

    iget-object v3, p0, LDu0;->z:LTQ0;

    iget-object v4, p0, LDu0;->A:LTQ0;

    iget-object v5, p0, LDu0;->B:Lorg/chromium/base/Callback;

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    .line 1
    iget-object v7, v1, Lku0;->G:Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, v2, LTQ0;->s:Ljava/lang/CharSequence;

    .line 3
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iput-object v2, v7, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    if-eqz v3, :cond_1

    .line 5
    iget-object v3, v3, LTQ0;->s:Ljava/lang/CharSequence;

    .line 6
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    iput-object v3, v7, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->m:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v6

    :goto_1
    if-eqz v4, :cond_2

    .line 8
    iget-object v4, v4, LTQ0;->s:Ljava/lang/CharSequence;

    .line 9
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    iput-object v4, v7, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->n:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, v6

    .line 11
    :goto_2
    iget-boolean v0, v0, LGu0;->f:Z

    if-eqz v0, :cond_4

    .line 12
    invoke-static {}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a()Lorg/chromium/chrome/browser/autofill/PersonalDataManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 14
    iget-wide v8, v0, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->a:J

    .line 15
    invoke-static {v8, v9, v0, v7}, LJ/N;->McRRW$S3(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    iput-object v0, v7, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->a:Ljava/lang/String;

    goto :goto_3

    .line 17
    :cond_3
    throw v6

    .line 18
    :cond_4
    :goto_3
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    iput-object v0, v7, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->a:Ljava/lang/String;

    :cond_5
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, v7, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->c:Z

    .line 22
    invoke-virtual {v7}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager$AutofillProfile;->getGUID()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {v1, v0, v2, v3, v4}, Lku0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 24
    invoke-virtual {v1, v0}, Lku0;->a(I)V

    .line 25
    invoke-interface {v5, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 26
    :cond_6
    throw v6
.end method
