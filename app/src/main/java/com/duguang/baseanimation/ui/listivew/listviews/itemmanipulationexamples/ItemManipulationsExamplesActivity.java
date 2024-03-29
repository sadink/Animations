/*
 * Copyright 2013 Niek Haarman
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.duguang.baseanimation.ui.listivew.listviews.itemmanipulationexamples;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.view.View;

import com.duguang.baseanimation.R;

public class ItemManipulationsExamplesActivity extends AppCompatActivity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_listviews_examples_itemmanipulations);

		getSupportActionBar().setDisplayHomeAsUpEnabled(true);
	}

	public void onDragAndDropClicked(View view) {
		Intent intent = new Intent(this, DragAndDropActivity.class);
		startActivity(intent);
	}

	public void onSwipeDismissClicked(View view) {
		Intent intent = new Intent(this, SwipeDismissActivity.class);
		startActivity(intent);
	}

	public void onAnimateRemovalClicked(View view) {
		Intent intent = new Intent(this, AnimateDismissActivity.class);
		startActivity(intent);
	}

	public void onExpandListItemAdapterClicked(View view) {
		Intent intent = new Intent(this, ExpandableListItemActivity.class);
		startActivity(intent);
	}

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch (item.getItemId()) {
		case android.R.id.home:
			finish();
			return true;
		default:
			return super.onOptionsItemSelected(item);
		}
	}
}
