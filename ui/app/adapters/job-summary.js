/**
 * Copyright (c) HashiCorp, Inc.
 * SPDX-License-Identifier: MPL-2.0
 */

import WatchableNamespaceIDs from './watchable-namespace-ids';
import classic from 'ember-classic-decorator';

@classic
export default class JobSummaryAdapter extends WatchableNamespaceIDs {
  urlForFindRecord(id, type, hash) {
    return super.urlForFindRecord(id, 'job', hash, 'summary');
  }
}
